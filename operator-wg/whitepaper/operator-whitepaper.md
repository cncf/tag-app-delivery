**Status**: WIP **Created** : N/A **Reviewed** : N/A  **Published** : N/A **Release Version:**   

# Operator Whitepaper

## Executive summary

## Introduction

### Goal of this document
The goal of this document is to provide a definition of operators for cloud-native applications in the context of Kubernetes and other container orchestrators.

### Target audience / Minimum level of experience 
This document is intended for application developers, Kubernetes cluster operators and service providers (internal or external) - who are looking to learn about operators and the problems they can solve. It can also help teams already looking at operators to learn when and where to use them to best effect. It presumes basic Kubernetes knowledge such as familiarity with Pods and Deployments.

## Foundation

### Operator design pattern
This section describes the pattern with abstract concepts, the next section “Kubernetes Operator Definition” will describe the implementations of the pattern in terms of Kubernetes objects and concepts

The operator design pattern defines how to manage application and infrastructure resources using declarative domain-specific knowledge. The goal of the pattern is to reduce the amount of manual imperative work which is required to keep an application in a healthy and well-maintained state. 

By using the operator pattern, the knowledge on how to adjust and maintain a resource is captured in code and usually in a single service (also called a controller).

When using an operator design pattern the user should only be required to describe the desired state of the application and resources. A software pre-written should make the necessary changes in the world so it will be in the desired state. The software will also monitor the real state continuously and take actions to keep it healthy and n the same state (preventing drifts)

A general diagram of an operator will have software that can read the desired spec and can create and manage the resources that were described. 

![Operator Design Pattern](img/designpattern.png)

The Operator pattern consists of three components:

* The application or infrastructure that we want to manage in a declarative way.
* Our domain specific knowledge that describes the state of the application in a declarative way.
* A controller that run continuously :
  * Reads and is aware of the state.
  * Runs actions against the application in an automated way.
  * Report the state of the application  in a declarative way.

This design pattern will be applied on Kubernetes and its operators in the next sections.


### Operator characteristics

### Kubernetes operator components
*“An operator is a Kubernetes controller that understands 2 domains: Kubernetes and something else. By combining knowledge of both domains, it can automate tasks that usually require a human operator that understands both domains”*
 (Jimmy Zelinskie, https://github.com/kubeflow/tf-operator/issues/300#issuecomment-357527937)
 
 
![Operator Big Picture](img/operator.png)
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

### Operator capabilities

#### Install an application / take ownership of an application

#### Upgrade an application

#### Backup

#### Recovery from backup

#### Auto-Remediation

#### Monitoring/metrics - observability
While the managed application should provide the telemetry data for itself, the operator could provide metrics about its own behavior and only provides a high level overview about the applications state (as it would be possible for auto-remediation). Furthermore, typical telemetry data provided by the operator could be the count of remediation actions, duration of backups, but also information about the last errors or operational tasks which were handled.

#### Scaling

#### Auto-Scaling

#### Auto-configuration tuning

#### Disconnect

#### Uninstalling

### Security and risks

### Operator frameworks for kubernetes

### Operator frameworks for non-kubernetes platforms

## Use Cases for an operator

## Best practices

## Technical implementation

## Summary / conclusion

## Related work / What's next? / Where to get help?

## Bibliography

**Contributors:**
* Marc Campbell
* Michael Hrivnak
* Joseph Jowanza
* Noah Kantrowitz
* Omer Kahani
* Thomas Schuetz

**Reviewers:**
* Daniel Sover
* Joe Thompson
* Padarn Wilson
