## Metacontroller - Lightweight Kubernetes controllers as a service

[Metacontroller](https://metacontroller.github.io/metacontroller/) is an operator, that makes it easy to write and deploy custom operators.

It introduces two CRD's itself (2021) :
* [Composite Controller](https://metacontroller.github.io/metacontroller/api/compositecontroller.html) - allowing to write operator triggered by CRD
* [Decorator Controller](https://metacontroller.github.io/metacontroller/api/decoratorcontroller.html) - allowing to write operator triggered by any kubernetes object (also managed by other operators)

Metacontrollers itself, configured by one of its CRD, will take care of observing cluster state and call controller, provided by user(user controller), to take actions.

User controller should, having given resource as input, compute desired state of dependent objects.

This could also be called `lambda controller` pattern (more on this [here](https://metacontroller.github.io/metacontroller/concepts.html#lambda-controller)), as the output is calculated only considering input and the logic used by metacontroller could also reside at a Function-as-a-Service provider.

Main advantages of metacontroller :
* Only a function (called via webhook) without any boilerplate related to watching kubernetes resources needs to be provided
* Such a function can be written in any language, and exposed via http


Main limitations :
* Only certain patterns are possible to implement, mentioned above
* The current architecture relies on a single metacontroller in a cluster
* Metacontroller is not aware of any external state, it relies entirely on cluster state

Example metacontroller configuration, shown below, is used to add additional network exposure for `StatefulSet` without explicitly defining `Service` manifest. 
```yaml
apiVersion: metacontroller.k8s.io/v1alpha1
kind: DecoratorController
metadata:
  name: service-per-pod
spec:
  resources:
  - apiVersion: apps/v1
    resource: statefulsets
    annotationSelector:
      matchExpressions:
      - {key: service, operator: Exists}
      - {key: port, operator: Exists}
  attachments:
  - apiVersion: v1
    resource: services
  hooks:
    sync:
      webhook:
        url: http://service-per-pod.metacontroller/sync-service-per-pod
        timeout: 10s

```
With above configuration :
* `metacontroller`, for every object matching `spec.resources` description (in this case - `apps/v1/statefulsets` with `service` and `port` annotations), will watch for any change in matching objects (create/update/delete) and invoke `hooks.sync` on each of those
* the `hooks.sync` can return objects which are described in `spec.attachment` (in this case - `v1/services`) which will be created/updated/deleted by `metacontroller`, according to `hook` response
For example, if below `StatefulSet` will be deployed:
```yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  annotations:
    service: "statefulset.kubernetes.io/pod-name"
    ports: "80:8080"
...
```
given `Service` object will be created by metacontroller:
```yaml
apiVersion: "v1"
kind: "Service"
spec:
  selector: "statefulset.kubernetes.io/pod-name"
  ports:
  - port: 80
    targetPort: 8080
```

The user defined endpoint (in this example - `http://service-per-pod.metacontroller/sync-service-per-pod`) only needs to care about the calculation of the `Service` and how it should look like for a given `StatefulSet`.

Additional examples and ideas what could be implemented using metacontroller, can be found at the [metacontroller-examples](https://metacontroller.github.io/metacontroller/examples.html) page !

For any question, please visit our slack channel ([#metacontroller](https://kubernetes.slack.com/archives/CA0SUPUDP)) or ask it on [github discussions](https://github.com/metacontroller/metacontroller/discussions/).
