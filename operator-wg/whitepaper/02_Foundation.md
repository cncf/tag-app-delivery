**Status**: WIP | **Maintainer** : Jennifer Strejevitch, Omer Kahani | 

## Foundation
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/36**  
Kubernetes and other orchestrators' success was due to their focus on containers' main capabilities.
While companies began their journey to cloud native, working with more specific use cases (microservices, stateless applications) made more sense.
As Kubernetes and other container orchestrators grew their reputation and extensibility, requirements became more ambitious.
The desire to use orchestrators' full lifecycle capabilities was also transferred to highly distributed data stores.

But Kubernetes primitives were not built to manage state by default.
Thus by relying on Kubernetes primitives alone, it's difficult to manage stateful application requirements such as replication, failover automation, backup/restore, upgrades, etc which can occur based on events that are too specific.

We can solve the problem of managing state with the Operator Pattern.
By leveraging Kubernetes built in capabilities such as self-healing and reconciliation and extending those along with application-specific complexities, it is possible to automate any application's lifecycle and operations and turn it into a highly capable offering.

When we hear about Operators, we think of Kubernetes.
But the idea of an application whose management is entirely automated can be exported to other platforms.
So with this paper, we aim to bring this concept to a higher level than Kubernetes itself.

### Operator Design Pattern
This section describes the pattern with abstract concepts, the next section “Kubernetes Operator Definition” will describe the implementations of the pattern in terms of Kubernetes objects and concepts

The operator design pattern defines how to manage application and infrastructure resources using declarative domain-specific knowledge. The goal of the pattern is to reduce the amount of manual imperative work which is required to keep an application in a healthy and well-maintained state.

By using the operator pattern, the knowledge on how to adjust and maintain a resource is captured in code and usually in a single service (also called a controller).

When using an operator design pattern the user should only be required to describe the desired state of the application and resources. A software pre-written should make the necessary changes in the world so it will be in the desired state. The software will also monitor the real state continuously and take actions to keep it healthy and n the same state (preventing drifts)

A general diagram of an operator will have software that can read the desired spec and can create and manage the resources that were described. 

![Operator Design Pattern](img/02_1_operator_pattern.png)

The Operator pattern consists of three components:

* The application or infrastructure that we want to manage in a declarative way.
* Our domain specific knowledge that describes the state of the application in a declarative way.
* A controller that run continuously:
  * Reads and is aware of the state.
  * Runs actions against the application in an automated way.
  * Report the state of the application  in a declarative way.

This design pattern will be applied on Kubernetes and its operators in the next sections.

### Operator Characteristics
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/37**

The core purpose of any operator is to extend its orchestrator's underlying API with new domain knowledge. As an example, an orchestration platform as Kubernetes natively understands things like containers and layer 4 load balancers via the Pod and Service objects. An operator adds new capabilities for more complex systems and applications. For instance, a prometheus-operator introduces new object types, "Prometheus", which extend Kubernetes with high-level support for deploying and running Prometheus servers.

The capabilities provided by an operator can be sorted into three overarching categories: dynamic configuration, operational automation, and domain knowledge.

#### Dynamic Configuration
Since the dawn of time, there have been two main ways to configure software, configuration files and environment variables. In the cloud native world there are some newer options like querying a well-known API at startup, but most existing software in the world uses one or both of these options. Kubernetes naturally provides many tools to interact with these (ConfigMaps, Secrets, etc) but because they are generic, they don’t understand any specifics of configuring a given application. An operator can define new custom object types (custom resources) to better express the configuration of a particular application in a Kubernetes context.

This allows for better validation and data structuring, which in turn reduces the likelihood of small configuration errors and improves the ability of teams to self-service without having as deep or complete a knowledge of either the underlying orchestrator or the target application as would be traditionally required. This can include things like progressive defaults, where a few high level settings are used to populate a best-practices-driven configuration file, or adaptive configuration such as adjusting resource usage to match available hardware or expected load based on cluster size.

#### Operational Automation
Along with custom resources, most operators include at least one custom controller. These controllers are daemons that run inside the orchestrator like any other, but connect to the underlying API and provide automation of common or repetitive tasks. This is the same way that orchestrators (like Kubernetes) are implemented, you may have seen kube-controller-manager or cloud-controller-manager mentioned in your journey so far. But as we saw with configuration, operators can extend and enhance orchestrators with higher-level automation such as deploying clustered software, providing automated backups and restores, or dynamic scaling based on load.

By putting these common operational tasks into code, we can ensure it will be repeatable, testable, and upgradable in a standardized fashion. Keeping humans out of the loop on frequent tasks also ensures that steps won’t be missed or elided, and that different pieces of the task can’t drift out of sync with each other. As before, this allows for improved team autonomy by reducing the hours spent on boring-but-important upkeep tasks like application backups.

#### Domain Knowledge
Similar to operational automation, we can write an operator to encode specialized domain knowledge about particular software or processes. A common example of this is application upgrades. While a simple stateless application might need nothing more than a Deployment’s rolling upgrade, databases and other stateful applications often require very specific steps in sequence to safely perform upgrades. This can be handled autonomously by the operator as it knows your current and requested versions and can run specialized upgrade code when needed. More generally, this can apply to anything a pre-cloud-native environment would use manual checklists for, effectively using the operator as an executable runbook.

Another common place to take advantage of automated domain knowledge is error remediation. For example, Kubernetes built in remediation behaviors mostly start and end with “restart container until it works” which is a powerful solution but often not the best or fastest solution. An operator can monitor its application and react to errors with specific behavior to resolve the error or escalate the issue if it can’t be automatically resolved. This can reduce MTTR (mean time to recovery) and also reduce operator fatigue from recurring issues.

### Operator components in Kubernetes

*“An operator is a Kubernetes controller that understands 2 domains: Kubernetes and something else. By combining knowledge of both domains, it can automate tasks that usually require a human operator that understands both domains”*
(Jimmy Zelinskie, https://github.com/kubeflow/tf-operator/issues/300#issuecomment-357527937)

![Operator Big Picture](img/02_2_operator.png)
Operators enable to extend the Kubernetes API with operational knowledge. This is achieved by combining Kubernetes controllers and watched objects that describe the desired state. The controller can watch one or more objects and the objects can be either Kubernetes primitives as Deployments and Services or things which reside outside of the cluster as Virtual Machines or Databases. The controller will constantly compare the desired state with the current state using the reconciliation loop which ensures that the watched objects get transitioned to the desired state in a defined way.

The operational (or domain-specific) knowledge is usually encapsulated in one or more Kubernetes custom resources which are defined by custom resource definitions.

#### Kubernetes controllers
A Kubernetes Controller takes care of routine tasks to ensure the desired state expressed by a particular resource type matches the real-world state (current state,https://engineering.bitnami.com/articles/a-deep-dive-into-kubernetes-controllers.html, https://fntlnz.wtf/post/what-i-learnt-about-kubernetes-controller/). For instance, the Deployment controller takes care that the desired amount of pod replicas is running and a new pod spins up, when one pod is deleted or fails.

Technically, there is no difference between a typical controller and an operator. Often, the difference referred to is the operational knowledge which is included in the operator. As a result, a controller which spins up a pod when a custom resource is created and the pod gets destroyed afterwards can be described as a simple controller. If the controller has additional operational knowledge like how to upgrade or remediate from errors, it is an operator.

#### Custom resources and custom resource definitions
Custom resources are used to store and retrieve structured data in Kubernetes (https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/). In case of an operator, a custom resource contains the required state of the application- or domain specific knowledge, but does not contain the implementation logic . Such information could be the version information of application components, but also enabled features of an application or information where backups of the application could be part of this. A custom resource definition (CRD) defines how such an object looks like, for example which fields exist and how the CRD is named. Such an CRD can be scaffolded using tools (as the operator sdk) or be written by hand.

The following example illustrates, how such an custom resource instance definition could look like:

```
apiVersion: example-app.appdelivery.cncf.io/v1alpha1
 kind: ExampleApp
 metadata:
   name: appdelivery-example-app
 spec:
   appVersion: 0.0.1
   features:
     exampleFeature1: true
     exampleFeature2: false
   backup:
     enabled: true
     storageType: “s3”
     host: “my-backup.example.com”
     bucketName: “example-backup”
 status:
   currentVersion: 0.0.1
   url: https://myloadbalancer/exampleapp/
   authSecretName: appdelivery-example-app-auth
   backup:
     lastBackupTime: 12:00
```

This example creates a custom resource with the name “appdelivery-example-app” of the kind “ExampleApp”.

The “spec” section is where the user can declare the desired state. This example declares that appVersion 0.0.1 should be deployed with one feature enabled and another disabled. Furthermore, backups of this application should be made, and a s3 bucket should be used.

The “status” section is where the operator can communicate useful information back to the user. In this example, the status shows the current deployed version. If it is different from the “appVersion” in the spec, then the user can expect that the operator is working to deploy the version requested in the spec. Other common information in the status section includes how to connect to an application and the health of the application.

#### Control loop
The control (reconciliation) loop in a Kubernetes controller ensures that the state that the user declares using a CRD matches the state of the application, but also that the transition between the states works as intended. One common use-case could be the migration of database schemes when upgrading an application. The control loop can be triggered on specific events, as a change on the crd, but also time-based, like for backing up data at a defined time.
