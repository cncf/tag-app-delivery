**Status**: WIP | **Maintainer** : N/A | 

## Use Cases for an Operator
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/40**

Example:
An operator is used to install an application, or to provision another object which is achieved by defining a set of objects which are managed by the operator and how they work with each other. After the installation, the target application should be running without human interaction. In further consequence a controller is used for reconfiguration of a system.

To achieve this, an operator watches the current state and the definitions made in the custom resource or external events, compares them and starts reconciling the application to get to the desired state when it’s needed. Changes in the custom resource could be enabling a feature or changing a version, external events could be the availability of an application update reported by an api. The current state of the application could also differ, when objects managed by the operator get deleted and so they also get recreated to get to the desired state.

When updating an application, the operator contains the logic which is needed to get to the new application version and how to transition. As described in the last chapter, this could be mechanisms to backup data before updating and updating the database schema. Therefore, the logic included in the operator knows which prerequisites are necessary to build a consistent backup, how to backup the data and how to get back to the normal state.

Finally, the operator is able to remove the application and the resulting objects.


### Prometheus Operator

The Prometheus Operator was one of the first ever Operators written, along with etcd, that proved the use case for this problem space.

_"The Prometheus Operator serves to make running Prometheus on top of Kubernetes as easy as possible, while preserving Kubernetes-native configuration options."_

When the [Prometheus Operator](https://github.com/prometheus-operator/prometheus-operator/blob/master/Documentation/user-guides/getting-started.md) is installed, besides the operator controller pod/deployment, a wide range of APIs becomes available to configure a Prometheus stack. The APIs are represented as Custom Resource Definitions (CRDs) which allow us to configure objects responsible, among other tasks, for:

- Describing a set of targets to be monitored by Prometheus (ServiceMonitor).
- Declaratively describing the desired state of a Prometheus deployment.
- Describing an [AlertManager](https://github.com/prometheus/alertmanager) cluster to handle alerts sent by client applications.

The benefits is using Kubernetes native configuration as a way to configure your whole operation stack, benefiting from Kubernetes resources validation and self-healing capabilities.

The Operator controller will then communicate with the K8s API server to add Service metrics endpoints and automatically generate the required Prometheus scrape configurations for the configured Services.
