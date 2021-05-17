# CNCF Operator White Paper - Public Comment Version

* If you'd like to add new things -> Create a PR against this branch (whitepaper/public-comment)
* Add yourself as reviewer in the doc/on the pr after you've reviewed this
* Add yourself as contributor if you made significant changes (added sections/chapters)

Table of Contents
=================

* [CNCF Operator White Paper \- Public Comment Version](#cncf-operator-white-paper---public-comment-version)
    * [Executive Summary](#executive-summary)
    * [Introduction](#introduction)
        * [The goal of this document](#the-goal-of-this-document)
        * [Target Audience / Minimum Level of Experience](#target-audience--minimum-level-of-experience)
    * [Foundation](#foundation)
        * [Operator Design Pattern](#operator-design-pattern)
        * [Operator Characteristics](#operator-characteristics)
        * [Operator components in Kubernetes](#operator-components-in-kubernetes)
        * [Operator capabilities](#operator-capabilities)
    * [Security](#security)
        * [Operator Developer](#operator-developer)
        * [Application Developer (operator "users")](#application-developer-operator-users)
    * [Operator Frameworks for Kubernetes](#operator-frameworks-for-kubernetes)
        * [CNCF Operator Framework](#cncf-operator-framework)
        * [Kopf](#kopf)
        * [kubebuilder](#kubebuilder)
        * [Metacontroller \- Lightweight Kubernetes controllers as a service](#metacontroller---lightweight-kubernetes-controllers-as-a-service)
    * [Operator Lifecycle Management](#operator-lifecycle-management)
        * [Upgrading the Operator](#upgrading-the-operator)
        * [Upgrading the Declarative State](#upgrading-the-declarative-state)
    * [Use Cases for an Operator](#use-cases-for-an-operator)
        * [Prometheus Operator](#prometheus-operator)
        * [Operator for GitOps](#operator-for-gitops)
    * [Best Practices](#best-practices)
        * [Management of a single type of application](#management-of-a-single-type-of-application)
        * [Writing operators that represent a whole stack](#writing-operators-that-represent-a-whole-stack)
        * [One CRD per controller](#one-crd-per-controller)
        * [Where to publish and find operators](#where-to-publish-and-find-operators)
        * [Further reading](#further-reading)
    * [Designing Operators](#designing-operators)
        * [Requirement analysis](#requirement-analysis)
        * [Custom or third\-party Operator](#custom-or-third-party-operator)
        * [Use the right tool](#use-the-right-tool)
        * [Use the right programming language](#use-the-right-programming-language)
        * [Design your Operator the right way](#design-your-operator-the-right-way)
        * [References](#references)
    * [Conclusion](#conclusion)
    * [Related Work](#related-work)
    * [Bibliography](#bibliography)
    * [Contributors](#contributors)
        * [Contributors](#contributors-1)
        * [Reviewers](#reviewers)

## Executive Summary
Maintaining application infrastructure requires many repetitive human activities that are devoid of lasting value.
Scripts and jobs are the preferred methods of performing precise tasks, verifying the state of an object, and therefore enabling the infrastructure requirements to be codified. An Operator provides a way to encapsulate the required activities, checks, and statement management of an application.

In Kubernetes, an Operator provides intelligent and dynamic management capabilities by extending the functionality of the Kubernetes API.

Operator components enable the automation of common processes as well as reactive applications that can continually adapt to their environment. This, in turn, allows for more rapid development with fewer errors, lower mean-time-to-recovery, and increased engineering autonomy.

Given the rising popularity of the Operator pattern, it has become essential for there to be a reference paper that helps both novice and expert alike to learn from the community-endorsed best practices to achieve their goals.
This document, outlines the taxonomy of Operators and the recommended configuration, implementation, and use cases for an operator application management system.

## Introduction

This white paper defines Operators in a broader context than Kubernetes. However, we will often use examples in the Kubernetes ecosystem to help describe the characteristics, components and common patterns currently in use.

It also dives deep into the capabilities of Operators such as backup, recovery and automatic configuration tuning, gives insight into frameworks currently in use, lifecycle management, security risks and use cases.

This paper includes best practices, including observability, security, and technical implementation.

It closes with related work, what additional value Operators can bring beyond this white paper and the next steps for Operators.

### The goal of this document
This document aims to define operators for cloud native applications in the context of Kubernetes and other container orchestrators.

### Target Audience / Minimum Level of Experience
This document is intended for application developers, Kubernetes cluster operators and service providers (internal or external) - who want to learn about Operators, and the problems they can solve. It can also help teams already looking at Operators to learn when and where to use them to best effect. It presumes basic knowledge of Kubernetes, such as familiarity with Pods and Deployments.

## Foundation
Kubernetes and the success of other orchestrators have been due to their focus on the main capabilities of containers.
While companies began their journey to cloud native, working with more specific use cases (microservices, stateless applications) made more sense.
As container orchestrators grew their reputation and extensibility, requirements became more ambitious.
The desire to use the full lifecycle capabilities of an orchestrator was also transferred to highly distributed data stores.

Kubernetes primitives were not built to manage state by default.
Relying on Kubernetes primitives alone brings difficulty managing stateful application requirements such as replication, failover automation, backup/restore, and upgrades (_which can occur based on events that are too specific_).

Operator Pattern can be used to solve the problem of managing state.
By leveraging Kubernetes built-in capabilities such as self-healing, reconciliation, and extending those along with application-specific complexities, it is possible to automate any application lifecycle, operations and turn it into a highly capable offering.

Operators are thought of as synonymous with Kubernetes.
However, the idea of an application whose management is entirely automated can be exported to other platforms.
This paper aims to bring this concept to a higher level than Kubernetes itself.

### Operator Design Pattern
This section describes the Operator pattern with high-level concepts.
The following section _Kubernetes Operator Definition_ will describe the implementations of the pattern in terms of Kubernetes objects and concepts.

The operator design pattern defines how to manage application and infrastructure resources using domain-specific knowledge and declarative state. The goal of the pattern is to reduce the amount of imperative manual work (e.g. how to backup, scale, upgrade) which is required to keep an application in a healthy and well-maintained state by capturing that domain-specific knowledge in code and exposing it using a declarative API

Using the operator pattern, the knowledge of how to adjust and maintain a resource is captured in code and often within a single service (also called a controller).

When using the operator design pattern, the user should only be required to describe the desired state of the application and resources. The operator implementation should make the necessary changes in the world so to converge to the desired state. The operator will also monitor the real state continuously and take actions to keep it healthy and in the same state (preventing drifts).

A general diagram of an operator will have software that can read the desired spec and can create and manage the resources that were described.

![Operator Design Pattern](img/02_1_operator_pattern.png)

The Operator pattern consists of three components:

* The application or infrastructure that we want to manage.
* A domain-specific language that enables the user to specify the desired state of the application in a declarative way.
* A controller that runs continuously:
  * Reads and is aware of the state.
  * Runs actions against the application in an automated way.
  * Reports the state of the application in a declarative way.

This design pattern will be applied to Kubernetes and its Operators in the following sections.

### Operator Characteristics
The core purpose of any Operator is to extend its orchestrator's underlying API with new domain knowledge. As an example, an orchestration platform within Kubernetes natively understands things like containers and layer 4 load balancers via the Pod and Service objects. An operator adds new capabilities for more complex systems and applications. For instance, a Prometheus Operator introduces new object types _Prometheus_, extending Kubernetes with high-level support for deploying and running Prometheus servers.

The capabilities provided by an operator can be sorted into three overarching categories: dynamic configuration, operational automation, and domain knowledge.

#### Dynamic Configuration
Since the dawn of time, there have been two main ways to configure software: configuration files and environment variables. There are some newer options in the cloud native world, like querying a well-known API at startup, but most existing software uses one or both of these options.

Kubernetes naturally provides many tools to interact with these (such as ConfigMaps and Secrets), but they don’t understand any specifics of configuring a given application because they are generic. An operator can define new custom object types (custom resources) to better express the configuration of a particular application in a Kubernetes context.

Allowing for better validation and data structuring reduces the likelihood of minor configuration errors and improves the teams' ability to self-serve. It is enabling them to avoid having a profound or complete knowledge of either the underlying orchestrator or the target application as would be traditionally required. This can include things like progressive defaults. A few high-level settings are used to populate a best-practices-driven configuration file or adaptive configuration such as adjusting resource usage to match available hardware or expected load based on cluster size.

#### Operational Automation
Along with custom resources, most operators include at least one custom controller. These controllers are daemons that run inside the orchestrator like any other but connect to the underlying API and provide automation of common or repetitive tasks. This is the same way that orchestrators (like Kubernetes) are implemented, as you may have seen kube-controller-manager or cloud-controller-manager mentioned in your journey so far. But as was demonstrated with configuration, Operators can extend and enhance orchestrators with higher-level automation such as deploying clustered software, providing automated backups and restores, or dynamic scaling based on load.

By putting these common operational tasks into code, it can be ensured they will be repeatable, testable, and upgradable in a standardized fashion. Keeping humans out of the loop on frequent tasks also ensures that steps won’t be missed or excluded and that different pieces of the task can’t drift out of sync with each other. As before, this allows for improved team autonomy by reducing the hours spent on boring-but-important upkeep tasks like application backups.

#### Domain Knowledge
Similar to operational automation, it can be written into an operator to encode specialized domain knowledge about particular software or processes. A common example of this is application upgrades. While a simple stateless application might need nothing more than a Deployment’s rolling upgrade; databases and other stateful applications often require very specific steps in sequence to perform upgrades safely. This can be handled autonomously by the operator as it knows your current and requested versions and can run specialized upgrade code when needed. More generally, this can apply to anything a pre-cloud-native environment would use manual checklists for (effectively using the operator as an executable runbook).
Another common way to take advantage of automated domain knowledge is error remediation. For example, the Kubernetes built-in remediation behaviours mostly start and end with “restart container until it works”, which is a powerful solution but often not the best or fastest solution.
An operator can monitor its application and react to errors with specific behaviour to resolve the error or escalate the issue if it can’t be automatically resolved. This can reduce MTTR (mean time to recovery) and also reduce operator fatigue from recurring issues.

### Operator components in Kubernetes

*“An operator is a Kubernetes controller that understands 2 domains: Kubernetes and something else. By combining knowledge of both domains, it can automate tasks that usually require a human operator that understands both domains”*
(Jimmy Zelinskie, https://github.com/kubeflow/tf-operator/issues/300#issuecomment-357527937)

![Operator Big Picture](img/02_2_operator.png)
Operators enable the extension of the Kubernetes API with operational knowledge. This is achieved by combining Kubernetes controllers and watched objects that describe the desired state. The controller can watch one or more objects. The objects can be either Kubernetes primitives such as Deployments, Services or things that reside outside of the cluster such as Virtual Machines or Databases. The controller will constantly compare the desired state with the current state using the reconciliation loop, ensuring that the watched objects get transitioned to the desired state in a defined way.

The desired state is encapsulated in one or more Kubernetes custom resources. The controller contains the operational knowledge needed to get the objects (such as deployments, services) to their target state.

#### Kubernetes controllers
A Kubernetes Controller takes care of routine tasks to ensure the desired state expressed by a particular resource type matches the real-world state (current state,https://engineering.bitnami.com/articles/a-deep-dive-into-kubernetes-controllers.html, https://fntlnz.wtf/post/what-i-learnt-about-kubernetes-controller/). For instance, the Deployment controller takes care that the desired amount of pod replicas is running, and a new pod spins up when one pod is deleted or fails.

Technically, there is no difference between a typical controller and an Operator. Often the difference referred to is the operational knowledge that is included in the Operator. As a result, a controller that spins up a pod when a custom resource is created and the pod is destroyed afterward can be described as a simple controller. If the controller has additional operational knowledge like upgrading or remediating from errors, it is an Operator.

#### Custom resources and custom resource definitions
Custom resources are used to store and retrieve structured data in Kubernetes as an extension of the default Kubernetes API  (https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/).
In the case of an Operator, a Custom Resource contains the desired state of the resource (e.g. application) but does not contain the implementation logic. Such information could be:
* The version information of application components.
* Enabled features of an application.
* Information where backups of the application could be part of this.

A custom resource definition (CRD) defines how such an object looks like, for example, which fields exist and how the CRD is named. Such a CRD can be scaffolded using tools (as the operator SDK) or be written by hand.


The following example illustrates, how such a custom resource instance definition could look like:

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

This example represents a custom resource with the name “appdelivery-example-app” of the kind “ExampleApp”.

The “spec” section is where the user can declare the instance's desired state. This example declares that appVersion 0.0.1 should be deployed with one feature enabled and another disabled. Furthermore, backups of this application should be made, and a object storage bucket should be used.

The “status” section is where the Operator can communicate useful information back to the user. In this example, the status shows the currently deployed version. If it is different from the “appVersion” in the spec, then the user can expect that the Operator is working to deploy the version requested in the spec. Other common information in the status section includes how to connect to an application and the health of the application.

#### Control loop
The control (reconciliation) loop in a Kubernetes controller ensures that the desired state that the user declares using a CRD matches the actual state of the application and that the transition between both states works as intended. One common use-case could be the migration of database schemas when upgrading an application. The control loop can be triggered on specific events, such as an update on the custom resource, but also time-based, like for backing up data at a defined time.

### Operator capabilities
An operator can assist with operating an application or other managed components by solving many different tasks. When talking about operators, the first and most well-known capability is installing and upgrading stateful applications. However, an operator could manage the entire lifecycle of an application without necessarily having to deal with the installation/upgrading.

The following sections should give an overview of capabilities an operator could have and what a user can expect if an operator implements these capabilities.

#### Install an application / take ownership of an application
An operator should be able to do the following:
* Provision and set up all the required resources so that no manual work would be required during the installation. An operator must check and verify that provisioned resources are working as expected and ready to be used.

* Recognize resources that were provisioned before the installation process and only take ownership of them for later use. In this case, the ownership process should be seamless and not cause downtime. The ownership process's purpose is to enable easy migration of resources to the operator.

* Report the version of the resources and their health status during the process.

#### Upgrade an application
When capable of upgrading an application, an Operator should:

* Be able to upgrade the version of the application/resources. The Operator should know how to update the required dependencies and run custom commands, for example, a database migration.

* Monitor the update, and roll back if there was a problem during the process.

* Report the version of the resources and their health status during the process. If there is an error, the version reported should be the version that is currently used.

#### Backup

This capability is for operators that manage data and ensure that the operator can create consistent backups. These backups should be done in a way that enables the user of the operator to perform a data restore if data is lost or compromised. Furthermore, the status information provided should give insights about when the backup last ran and its location.

![Example Backup Process](plantuml/backup-sequence.png)

The above illustration shows how such a process could look.

1. A human or another trigger (e.g. time-trigger or event) initiates the backup.
2. The Operator instructs its watched resource (application) to set up a consistent state (like a consistent snapshot).
3. The Operator triggers the backup of the application data to external storage using appropriate tools. This could either be a one-step process (backup directly to external storage) or in multiple steps, such as writing to a persistent volume first and the external storage afterward. The external storage might be an on-premises network file system but also an object store in a cloud provider’s infrastructure.
4. The Operator writes the backup’s state (failed or succeed), location of the backup, and the application version to the status section of the custom resource.

#### Recovery from backup

The recovery capability of an operator assists a user in restoring the application state from a successful backup. Therefore, the application state (application version and data) should be restored.

Among common use cases:
* Availability of application state and configuration after failure.
    * The user only needs to create a custom resource for the application and specify the backup information. The operator would read the configuration, restore the application version and restore the data.
* The user backed up the data only.
    * They might need to specify the application version used directly in the custom resource that the operator is watching.

In both scenarios, the operator ensures that the application is up and running by reconciling the data from the backup specified with the current application state.

#### Auto-Remediation
The auto-remediation capability of an Operator ensures that it can restore the application from a more complex failed state, which might not be handled or detected by mechanisms as health checks (live and readiness probes). Therefore, the Operator needs to have a deep understanding of the application. This can be achieved by metrics that indicate application failures or errors, but also by dealing with Kubernetes mechanisms like health checks.

Some examples might be:
* Rolling back to the last known configuration if a defined amount of container starts is unsuccessful after a version change.
* At some points, a restart of the application might be a short-term solution that the Operator could also do.
* It could also be imaginable that an Operator informs another Operator of a dependent service that a backend system is not reachable at the moment (to take remediation actions).

This capability enables the Operator to take actions to keep the system up and running.


#### Monitoring/metrics - observability
While the managed application should provide the telemetry data for itself, the operator can provide metrics about its behaviour while only providing a high-level overview of the application's state (supporting auto-remediation). Typical telemetry data provided by the operator could be:
* The count of remediation actions.
* Duration of backups.
* Information about the last errors or operational tasks which were handled.


#### Scaling (Operator Supports Scaling)
Scaling is part of the day-2 operations that an operator can manage to keep the application and its resources functional. The scaling capability doesn’t require the scaling to be automated but only informs the Operator on how to change the resources in terms of horizontal and vertical scaling.

An operator should be able to increase or decrease any resource that it owns, such as CPU, memory, disk size, and the number of instances.

Ideally, the scaling action will happen without downtime. The scaling action ends when all the resources are in a consistent state and ready to be used. Therefore, an operator should verify the state of all the resources and report it.

#### Auto-Scaling
An Operator should be able to perform the scaling capability based on continuous metric collection and thresholds. An Operator should automatically adjust the properties (upwards and downwards) of every resource that it owns.

An Operator should respect the basic scaling configuration of min and max.

#### Auto-configuration tuning
This capability should empower the Operator to manage the configuration of the managed application. 

As an example, the Operator could adopt the memory and DNS settings of an application according to the operation environment (e.g. Kubernetes). The Operator should also handle these setting changes seamlessly, e.g. if a configuration change requires a restart, the Operator must trigger it.

These capabilities should be transparent to the users. Users should be able to override such auto-configuration mechanisms if they want to do so. Besides that, automatic reconfigurations should be well-documented and reported in a way that the user could comprehend what is happening within the infrastructure.

#### Uninstalling / Disconnect
When deleting the declarative requested state (in most cases a custom resource), an operator should allow two behaviours:
- Uninstalling: An operator should be able to remove or delete every managed resource.
- Disconnecting: An operator should stop managing the provisioned resources.

Both processes should be applied to every resource that the operator directly provisioned.  
An operator should report any failure in the process in a declarative way (using the [status field](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/#object-spec-and-status) for example).

## Security
![operator model](img/04_1_operator_model.png)

Operators are intended to manage their state and configuration via the Kubernetes API server using the Custom Resource Definition. The subordinate API resources they manage (often pods running stateful applications) also have their lifecycle and supporting RBAC, services, etc. managed via the Kubernetes API. In some cases, the operator will also interact with the application’s API across the network. All of these routes offer the potential to compromise the operator and its resources and should be protected in line with best practices laid out below.

### Operator Developer
Operator developers should be aware of the security risks an operator
introduces and document its secure use. While developing an operator
it's important to focus on key areas such as transparency and
documentation, operator scope, and vulnerability analysis.

#### Transparency and Documentation
During the development of an operator, a developer should have a clear understanding of how it will work and interface within Kubernetes. As developers shift from development to publishing the operator, users should also have a clear understanding of what the operator does, and how.
You've written something you're proud of, but think of this from the end user's point of view: Should they trust source code from the internet, an operator to run with administrative access on their cluster which may be large and costly, or maybe handling sensitive information? Anything the developer can do to help a user come up to speed with their software, how it works, how it's secured, and what effects it might have on their cluster will make it easier for them to adopt the software.

Here are some items that can help users make informed decisions
about if they should use an operator:  

* Descriptive diagram (threat model) of how the operator is
communicating and with what is a good start to helping a user
understand how they must secure it and apply policy for the operator.
* Use case of how the software is intended to be used in order to
stay in scope for compliance or you risk vulnerability outside that
scope.
* Documented RBAC scopes, threat model, communication ports, API
calls available, pod security policy requisites (or other policy engine
requisites), or any other policy engine requisites developed for
Kubernetes such as OPA.
* Security reporting, disclosure, and incident response processes:
If someone finds a potential security issue, who should they contact
and what type of response should they expect?
* Logging and monitoring attachment through exposed endpoints, log
levels, or log aggregation.
* Operator issue, feature, version tracking.
* If the project has had security disclosures in the past, listing
these disclosures (and their CVE IDs) on a web page is a strong step
in building trust with users. Everyone will have security
issues at some point - how they are handled displays the maturity
of a project.

For further ideas around the security of the development process,
the reader may wish to review the CNCF Security TAG's [self-assessment
questionaire](https://github.com/cncf/tag-security/blob/main/assessments/guide/self-assessment.md).

#### Operator Scope

There are many use cases for operators and there is virtually no limit
in the scope of what you can design it for. In order to be clear about
the secure nature of an operator, there should be clear communication
involved with each scope. The general scope’s which could be used are
cluster-wide operators, namespace operators, and external operators. In
order to best secure them, there needs to be an understanding of the
communication, any API’s created, controllers and their responsibility,
and any application metrics endpoints. If this information is provided
with the operator it can be used to further secure the operator
application within the scope of implementation. If the information is
not provided you can be left vulnerable to a myriad of attacks.  

**Cluster-wide Operators** exist to execute custom resources across a
cluster no matter if those resources are living in another namespace
or not.   
**Namespace Operators** exist to execute custom resources within a
namespace. Usually, there are policy engine policies applied to jail the
scope within the namespace and only communicate with pods within the
namespace. This is considered more secure by nature, but the same rules
apply.   
**External Operators** exist to execute custom resources that are
external to the cluster. The same rules apply, in addition to secure this
scope we must know the nature of the communication from the cluster to
the external component.

While this paper also talks about scoping from a user point of view,
how an operator is designed will weigh heavily on the type of
security controls which can be applied against it in production.
It is common to start with lax permissions, and intentions to apply
security concepts before release; Spending some time thinking about
the security design of the operator as developers begin work on it
will make this process much easier for developers and their users.  

#### Vulnerability Analysis

Being focused on the development and security of the operator
there are steps that must be taken as an operator developer to ensure
validation and proper security analysis has been done. Following the
guidelines in the CNCF Cloud Native Security Whitepaper, there is a
clear lifecycle process that defines the [layers of concern](https://github.com/cncf/sig-security/blob/master/security-whitepaper/cloud-native-security-whitepaper.md#cloud-native-layers) for the operator developer. All three layers
should be adhered to with a strict focus on the development and distribution
layers in the scope of the operator developer. There are many detailed
guidelines in the development and distribution layers that will help
to apply sound vulnerability analysis to supply chain to ensure
that the operator being developed is signed and trusted for the best
integrity. The CNCF [Cloud Native Security Whitepaper](https://github.com/cncf/sig-security/blob/master/security-whitepaper/cloud-native-security-whitepaper.md)
is available at this link.  

In addition to the supply chain there needs to be a focus on
performing a threat model of the operator to keep the developer
in check and also make sure that there was nothing incidentally missed
that could leave the door open for attack. The foundational model for
checking for threats can be observed in the CNCF Cloud Native Security
Whitepaper on [Threat Modeling](https://github.com/cncf/sig-security/blob/master/security-whitepaper/cloud-native-security-whitepaper.md#threat-modeling).

### Application Developer (operator "users")

Operators perform administrative tasks on the user’s behalf such
as volume creation/attachment, application deployment, and
certificate management. As the user is delegating control to the
operator, it is essential to provide machine authorization to perform
the actions needed, but one must also be careful to not grant more
privileges than are necessary for the operator to perform its role.

Deployment of an operator grants third-party software some level
of access to a Kubernetes namespace or cluster. While security
expertise is not required to use operators, the following  Kubernetes
concepts highlight security preparation when using an operator:

**Namespaces** are one of the primary ways of grouping and cordoning a
group of resources. In regards to an operator, the user should
consider what namespaces the operator needs to work with. While
there may be some use cases where a single operator needs access
to the whole cluster, it seems the common use case in 2021 is for
an operator to work with a specific application within Kubernetes,
so it usually makes sense to provide a namespace for that application
and related resources/operators. To further reduce the operator’s
separation from any loose or stolen RBAC in the subordinate resource’s
namespace, a dedicated namespace for the operator provides more
separation.

**Role-Based Access Controls** are available in modern releases of
Kubernetes. When granting an operator access to resources, the focus
should be on granting the most limited set of permissions needed
for the operator to perform its task. This means only grant
ClusterRoles if absolutely necessary, but granting specific permissions
for specific resources/namespaces. The
[Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
chapter of the user guide covers this topic in detail. Operator
build kits such as the Operator SDK use general RBAC defaults that
developers may have not refined for their specific operator.
Permissions afforded by the service account identity outside the
cluster include federated and cross-cluster operators that have
permissions in other Kubernetes clusters. As operators are increasingly
used to manage off-cluster and cloud resources, cloud IAM integration
permissions should be configured to prevent cloud account takeover
from a compromised operator.

_One thing to note_: A “land grab” of privileges - e.g requesting
significant/administrative access - is not always malicious in
intent. The developer might not know better or have had the time
to tune the required permissions to the concept of least privilege.
Even in the most innocent case, though, it is still a red flag:
Perhaps the operator is not yet widely used enough for others to
have encountered the overuse of privileges, and perhaps it is a
sign of other security weaknesses within the operator. It is advisable
to proceed with caution if such a “land grab” is found.

**Software provenance**: The “software supply chain” is starting to get
more attention at the time of writing. Consider the
source for an operator, how it is being installed, and how or why
a malicious user may want access to a Kubernetes cluster. Spend a few minutes
reviewing an installation script before running it. While the kubectl
command supports the ability to apply a yaml script directly from
the public Internet (e.g `kubectl create -f
https://publicwebsite.com/install/operator.yaml`) it is strongly
recommended that one first downloads that file locally, review it,
and then run `kubectl create -f operator.yaml`.

To review the script ask the following questions:

* What is the purpose of this script?
* What resources are being created by the script? Is this script creating Roles and RoleBindings?
* What 3rd party sources will the script attempt to use? (e.g.
container images, other yaml files) How popular and well-maintained
are the git and docker image repositories? These might be signs of
a new project, abandoned software which is no longer receiving
security updates, or indicators of an unofficial repository with
malicious intent.
* What privileges does the script attempt to gain? Does the script
attempt to run container securityContexts with host sharing or
“privileged mode”?

**Advanced security controls**, such as SELinux, AppArmor, or seccomp
may be mandated by cluster policy. Open source operators are unlikely
to have configurations for these Linux security modules, but if
an organization is familiar with one of these control systems,
writing the appropriate security configuration for the operator
should not require significant overhead.

**Operator configuration**: Ideally a project will be “secure by default” to increase the likelihood of a secure operator or application deployment. Insecure defaults require manual configuration to secure the environment. While it may seem like unnecessary work to learn the configuration parameters of a new operator, it is usually preferable to manually adjusting the configuration and/or source code of an operator itself to reach the needed level of security.

## Operator Frameworks for Kubernetes
Currently, many frameworks exist to simplify the process of bootstrapping an operator/controller project and to write operators. This chapter describes some of them without any claim to comprehensiveness.

### CNCF Operator Framework

The *[Operator Framework](https://github.com/operator-framework)* is an open source toolkit to manage Kubernetes native applications, called Operators, in an effective, automated, and scalable way.

It aims at Operator Developers with an SDK to streamline Operator development with scaffolding tools (based on [kubebuilder](https://github.com/kubernetes-sigs/kubebuilder)), a test harness for unit tests and integration as well as functional tests and packaging/distribution mechanisms to publish version histories of Operators in conjunction with a user-configurable update graph. Supported project types are Golang, Helm and Ansible. Python and Java are currently in development.

It also caters for Kubernetes administrators that require a central point to install, configure and update Operators in a multi-tenant environment with potentially dozens of Operators installed. It covers the following aspects of the Operator lifecycle:

- Continuous over-the-Air Updates and Catalogs of Operators a publishing mechanism and source of updates
- Dependency Model so Operator can have dependencies on cluster features or on each other
- Discoverability for less privileged tenants that usually cannot list CRDs or see Operators installed in separate namespaces
- Cluster Stability that avoids runtime conflicts of Operators on multi-tenant clusters while honouring the global nature of CRDs, and the subtleties of CRD versioning and CRD conversion
- Declarative UI controls that allow consoles to generate rich UI experiences for end users interacting with Operator services

### Kopf

**[Kopf](https://github.com/nolar/kopf)** —**K**ubernetes **O**perator **P**ythonic **F**ramework— is a framework
to create Kubernetes operators faster and easier, just in a few lines of Python.
It takes away most of the low-level Kubernetes API communication hassle and
marshalls the Kubernetes resource changes to Python functions and back.
As simple as this:

```python
import kopf

@kopf.on.create(kind='KopfExample')
def created(patch, spec, **_):
    patch.status['name'] = spec.get('name', 'world')

@kopf.on.event(kind='KopfExample', field='status.name', value=kopf.PRESENT)
def touched(memo, status, **_):
    memo.last_name = status['name']

@kopf.timer('KopfExample', interval=5, when=lambda memo, **_: 'last_name' in memo)
def greet_regularly(memo, **_):
    print(f"Hello, {memo['last_name']}!")
```

You should consider using this framework if you want or need to make ad-hoc
(here-and-now one-time non-generalisable) operators in Python 3.7+, especially
if you want to bring your application domain directly to Kubernetes as custom
resources.
For more features, see the [documentation](https://kopf.readthedocs.io/en/stable/).

### kubebuilder

The kubebuilder framework provides developers with the possibilities to extend the Kubernetes API by using Custom Resource Definitions and to create controllers that handle these custom resources.

The main entry point provided by the kubebuilder framework is a *Manager*. In the same way the native Kubernetes controllers are grouped into a single Kubernetes Controller Manager (`kube-controller-manager`), you will be able to create several controllers and make them managed by a single manager.

As Kubernetes API resources are attached to domains and arranged in Groups, Versions and Kinds, the Kubernetes custom resources you will define will be attached to your own domain and arranged in your own groups, versions and kinds.

The first step when using kubebuilder is to create a project attached to your domain, that will create the source code for building a single Manager.

After initiating your project with a specific domain, you can add APIs to your domain and make these APIs managed by the manager.

Adding a resource to the project will generate some sample code for you: a sample *Custom Resource Definition* that you will adapt to build your own custom resource, and a sample *Reconciler* that will implement the reconcile loop for your operator handling this resource.

The kubebuilder framework leverages the `controller-runtime` library, which provides the Manager and Reconciler concepts, among others.

The kubebuilder framework provides all the requisites for building the manager binary, the image of a container starting the manager, and the Kubernetes resources necessary for deploying this manager, including the `CustomResourceDefinition` resource defining your custom resource, a `Deployment` to deploy the manager and RBAC rules for your operator to be able to access the Kubernetes API.

### Metacontroller - Lightweight Kubernetes controllers as a service

[Metacontroller](https://metacontroller.github.io/metacontroller/) is an operator, that makes it easy to write and deploy custom operators.

It introduces two CRD's itself (2021) :
* [Composite Controller](https://metacontroller.github.io/metacontroller/api/compositecontroller.html) - allowing to write operator triggered by CRD
* [Decorator Controller](https://metacontroller.github.io/metacontroller/api/decoratorcontroller.html) - allowing to write operator triggered by any kubernetes object (also managed by other operators)

Metacontroller itself, configured by one of its CRD, will take care of observing cluster state and call controller, provided by the user(user controller), to take actions.

User controller should, having given resource as input, compute desired state of dependent objects.

This could also be called `lambda controller` pattern (more on this [here](https://metacontroller.github.io/metacontroller/concepts.html#lambda-controller)), as the output is calculated only considering input and the logic used by metacontroller could also reside at a Function-as-a-Service provider.

Main advantages of metacontroller :
* Only a function (called via webhook), without any boilerplate related to watching kubernetes resources, needs to be provided.
* Such a function can be written in any language, and exposed via http.

Main limitations :
* Only certain patterns are possible to implement, mentioned above.
* The current architecture relies on a single metacontroller in a cluster.
* Metacontroller is not aware of any external state, it relies entirely on cluster state.

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
With the above configuration :
* `metacontroller`, for every object matching `spec.resources` description (in this case - `apps/v1/statefulsets` with `service` and `port` annotations), will watch for any change in matching objects (create/update/delete) and invoke `hooks.sync` on each of those
* the `hooks.sync` can return objects which are described in `spec.attachement` (in this case - `v1/services`) which will be created/updated/deleted by `metacontroller`, according to `hook` response
For example, if below `Statefulset` will be deployed:
```yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  annotations:
    service: "statefulset.kubernetes.io/pod-name"
    ports: "80:8080"
...
```
the given `Service` object will be created by metacontroller:
```yaml
apiVersion: "v1"
kind: "Service"
spec:
  selector: "statefulset.kubernetes.io/pod-name"
  ports:
  - port: 80
    targetPort: 8080
```

The user-defined endpoint (in this example - `http://service-per-pod.metacontroller/sync-service-per-pod`) only needs to care about the calculation of the `Service` and how it should look like for a given `StatefulSet`.

Additional examples and ideas that could be implemented using metacontroller, can be found at the [metacontroller-examples](https://metacontroller.github.io/metacontroller/examples.html) page.

For any question, please visit our slack channel ([#metacontroller](https://kubernetes.slack.com/archives/CA0SUPUDP)) or ask it on [github discussions](https://github.com/metacontroller/metacontroller/discussions/).

## Operator Lifecycle Management
An Operator is an application. This section will describe considerations regarding the lifecycle of the operator itself.

### Upgrading the Operator
While upgrading the operator, special care should be taken in regards to the managed resources. During an operator upgrade, the managed resources should be kept in the desired state and healthy.

### Upgrading the Declarative State
The declarative state is the API of the operator, and it may need to be upgraded. The usage of CRD versions indicates the stability of the CRD and the operator - [read more about versioning a CRD](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/)

## Use Cases for an Operator
Example:
An operator is used to install an application or provision another object. We achieve this by defining a set of objects to be managed by the operator and how they interact with each other. After the installation, the target application should be running and operating itself without human interaction. In addition, a controller can be used for the reconfiguration of the system.

To achieve this, an operator watches the current state of the resources and compares it against the definitions made in custom resources or external events. It will reconcile the application to achieve the desired state when it is needed. Changes in the custom resource could be enabling a feature or changing a version, external events could be the availability of an application update reported by an API. The current state of the application could also differ when objects managed by the operator get deleted and so they also get recreated to reach the desired state.

The operator also contains the auxiliary logic to update an application and how to transition. As described in the last chapter, these could be mechanisms to backup data before updating and updating the database schema. Therefore, the logic included in the operator knows which are the prerequisites to build a consistent backup, how to back up the data and how to get back to the normal state.

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

### Operator for GitOps
Often, operators are associated with installing, upgrading and operating applications. One example that an operator could also "operate" things without managing an application can be found in the GitOps world.

There might be the case that an - mainly imperatively managed - application should be orchestrated in a more declarative and Git-driven way. Therefore, an operator could assist in fetching the configuration from a git-repository, analyze configurations to find out if something has to be changed and which actions should be taken and takes the according actions.

![GitOps Example](img/071_GitOps_UseCase.png)

The above example illustrates such a case:

1. a piece of configuration is checked in a git repository.
2. The operator acknowledges the git repository by using a custom resource definition (where the repository path and the information about the secret is stored).
3. The operator fetches the config and analyses it.
4. It applies its operational knowledge to get from the current to the desired state (by querying the application about its current state and sending instructions to get to the desired state).

This enables the user to have reproducible configurations, versioned in a git repository.

## Best Practices

Over time, lots of best practices for writing operators have been published by various sources. Following, some of these sources are mentioned and parts of them described based on a scenario.

Scenario: A microservice application ("The PodTato Head", https://github.com/cncf/podtato-head) should be entirely managed via operators (even if another deployment mechanism would make more sense). This application consists of 4 services and 1 database which can be illustrated as follows:

![Sample Application](./img/08_1_sample.png)

Best practices should be applied to this application deployment.

### Management of a single type of application

(Sources: https://github.com/operator-framework/community-operators/blob/master/docs/best-practices.md, https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps)

The features an operator provides should be specific to a single application. Applied to our example, this means that there should be 5 operators which will manage one component (podtato-server, arm-service, foot-service, hat-service and the database) at a time. This provides a good separation of concerns for all of them (based on https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps).

### Writing operators that represent a whole stack
(Sources: https://github.com/operator-framework/community-operators/blob/master/docs/best-practices.md)

Even if there is an operator for every part of the application, it might be easier to manage the whole stack in one CRD. If this is the case, an operator which represents the whole stack should delegate the work to the other operators for the more specific parts.

![Stack-Operator](./img/08_2_umbrella.png)

Technically, there would be a custom resource definition for the whole stack managed by an operator. This operator then creates a custom resource for each of the components of the stack which are again managed by their own operators.

### One CRD per controller
Every CRD managed by an operator should be implemented in a single controller. This makes code a bit more readable and should help with separation of concerns.

### Where to publish and find operators
There are services like operatorhub.io and artifacthub.io which help end-users find operators and instructions on how they can be installed and used. These services often include information about current security issues, the source code and the capabilities of the operators offered.

### Further reading
There are many other best practices, such as:
* An operator shouldn't install other operators.
* Operators shouldn't make assumptions about the namespaces they are deployed in.
* Use an SDK for writing operators.

In addition to these, there are many other resources that provide best practices, for example:
* https://github.com/operator-framework/community-operators/blob/master/docs/best-practices.md
* https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps

## Designing Operators

The previous chapter describes a use case for an operator that was one of the first operators ever written. With no claim of completeness, this chapter deals with some best practices when writing our own Operators, based on our own experience or described by the community. However, without clear knowledge of the actual state and without clear ideas of what we want to achieve, we also need some methods and techniques specifying what our Operator should do. Therefore, we will also have to deal with some aspects of requirement engineering..

### Requirement analysis

A key promise of Kubernetes is that it enables the automation of operational
tasks to deploy, scale, and manage containerized applications across
multiple environments with no (or minimal) human intervention. In
Kubernetes, stateless cloud native applications are well suited for
horizontal scaling, automated self-healing restarts, or progressive
rollout of new containers. However, stateful applications with complex
components running in clustered or distributed environments are not
always well suited for this type of container-based infrastructure. They
still require human interaction when it comes to persistence, upgrades,
or high availability to remain in a stable state.

True, Kubernetes solves these issues in a novel way by creating and
managing custom applications using Operators. However, and here is the
first question: as a developer, do you really know how this type of
application works and interacts both internally and externally? How do
the day-to-day IT operations work? How is the application backed up
(including recovery)? What steps are necessary in case of failovers or
outages, are there any dependencies between the software components?

It is therefore strongly recommended that a comprehensive requirement
analysis is undertaken to determine the requirements or conditions of an
Operator. Requirement analysis is critical to the success or failure of
Operators. All requirements should be documented, measurable, testable,
traceable, related to identified requirements, and defined at a level of
detail sufficient for system design.

Steps to build the right operator:

1.  If unsure whether to use an operator or not, try to run a feasibility assessment instead. Find plausible and understandable reasons for using an Operator. Contrast the benefits of Operators with the effort required to implement and operate them.

2.  Study existing documentation of your application, interview
    responsible system administrators and other stakeholders (if
    necessary), get a list of possible system check activities, Business
    and SLA-relevant KPI and compare them with existing incident
    reports or bug tracking lists.

3.  Describe a concrete scenario (e.g., application failover) in detail
    along the lines of "who does what, when, how, and why".

4.  Describe what an Operator needs to know to run the previous scenario
    independently, keeping the application in a stable and productive
    state.

### Custom or third-party Operator

Now that the situations where using an Operator have been made clear, the next part of the paper will focus on where Operator implementations are available and which best meets requirements.

Finding the right Kubernetes Operator can be a challenge. On the one
hand, you need to find something that fits the requirements you
have collected. On the other hand, the Operator needs to be regularly
updated and actively supported by the vendor.

In short, to get an Operator, you have three choices:

(1) You have a database and need an Operator? Consult the website of the
    vendor.

(2) You can search for a public (or private) registry that offers
    available Kubernetes Operators. For example, \[1\] provides a
    platform for publishing and sharing Operators in a way that
    simplifies distribution. The platform makes it easier to find
    supported services and basic documentation. It also identifies
    active Operator communities and vendor-supported initiatives.

(3) Write your own Operator, either from scratch or using a suitable
    framework.

Operators are application-specific and their functionality ranges from a
simple installation script to sophisticated logic that handles upgrades,
backups and failures. It takes time and effort to find the right
Operator in a public registry, at the cost of oversized or missing
functionality. In contrast, when writing a custom Operator, there are no
limits to the functionality developers want or need to implement, at the
cost of development and maintenance.

### Use the right tool

After completing and having a complete requirements analysis and
deciding to write a custom Kubernetes Operator, the next question is
which tools developers should use. The article by \[2\] discusses
different approaches to writing Operators and lists the pros and cons of
each solution. The article focuses on one Operator as an example and
uses various techniques and tools. In detail, the author describes the
following tools:

\(a\) Operator SDK (Helm, Go, Ansible).

\(b\) Operator framework KOPF (Python)

\(c\) Bare programming language (Java)

As mentioned earlier, this article not only describes the individual
tools but also compares their approaches. The author demonstrates that
the imperative programming approaches require more time, work and
caution during development. In return, they give developers the
flexibility to program any kind of logic that is needed. In contrast,
the declarative approaches (Helm Chart, Ansible) allow the
implementation of Operators in a very simple form, which is precise and
human-readable.

Best practices of \[2\] are:

1.  If you **already have a Helm chart** for your software and you do
    not need any complex capability levels =\> Operator SDK: Helm

2.  If you want **to create your Operator quickly** and you do not need
    any complex capability levels =\> Operator SDK: Helm

3.  If you **want complex features** or/and be flexible about any future
    implementations =\> Operator SDK: Go

4.  If you want to keep a **single programming language in your
    organization**

    a.  If a popular Operator Framework exists for your language or/and
        you want to contribute to it =\> Operator Framework

    b.  If no popular Operator Framework exists for your programming
        language =\> Bare Programming Language

5.  If **none of the above** =\> Operator SDK: Go

### Use the right programming language

Operators are programs that can be written in any language of choice.
This works because Kubernetes provides a REST API that allows
communication with clients using lightweight protocols such as HTTP.
Consequently, software developers can write Operators in their preferred
programming language as long as the REST API specifications are
followed.

However, if developers are free to choose their programming language,
sooner or later a patchwork of different technologies and languages will
emerge. This will end up increasing costs for maintenance,
troubleshooting, bug fixing and support requests. A better strategy is
to focus on a single programming language and to use it for development
as a team. This greatly supports the collaboration and mutual support in
a team.

However, according to \[1\], **Operators written in Go Language** are by
far the most popular. The reason for this is two-fold: first, the
Kubernetes environment itself is written in Go, so the client library is
perfectly optimized. Second, the Operator SDK (with embedded
Kubebuilder) supports the implementation of Operators in Go out-of-the-box.
This saves developers a lot of code scaffolding and gives them code generation for
free.

### Design your Operator the right way

The last paragraph summarizes an unsorted list of best practices which
were found and published by various sources.

-   Writing an Operator involves using the Kubernetes API. Use a
    framework like Operator-SDK to save yourself time with this and get
    a suite of tooling to ease development and testing. \[3\]

-   Design an Operator in such a way that the application instance continues
    to run unaffected and effectively even if the Operator is stopped or
    removed.

-   Develop one Operator per application \[4\]

-   Operators should be backward compatible and always understand
    previous versions of resources that have already been created.

-   Use asynchronous sync loops \[4\]

-   Operators should leverage built-in Kubernetes primitives such as
    ReplicaSets and Services. Whenever possible, use well-understood
    and well-tested code.

-   When possible, test Operators against a test suite that simulates
    potential failures of Pods, configuration, storage, and networking.

### References

\[1\] https://operatorhub.io

\[2\]
https://hazelcast.org/blog/build-your-kubernetes-operator-with-the-right-tool/

\[3\]
https://github.com/operator-framework/community-operators/blob/master/docs/best-practices.md

\[4\]
https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps

## Conclusion
Originally, operators were a first-class solution for onboarding stateful applications into orchestrators that usually tackled the operation of stateless workloads. They enhanced their APIs and increased the power of container orchestrators further but didn’t resolve all problems of application configuration and “Day 2” operations. It is important to keep in mind that Operators are a pattern to manage specific requirements and facilitate operations but they also bring complexities that should be weighed up before being implemented.


## Related Work
Initially, Operators were introduced by a blog post on the CoreOS Blog. This article provides a rough overview of what operators are, why the concept has been developed and how they are built. The insights of this article are mainly used for the definition of operators in this document. As the blog post only provided a concise overview, additional terms as capabilities, security and additional concepts are described more in-depth in this document.

The Operator Pattern as a concept is described in the Kubernetes documentation and therefore provides an overview of what an example operator could do and provides starting points for writing an operator. (https://kubernetes.io/docs/concepts/extend-kubernetes/operator/).

The Book “Kubernetes Operators” (Dobies & Wood, 2020) provides a comprehensive overview of operators, which problems they solve and the different methods to develop them. Definitions made in this book flowed into this document. The same applies to the Book “Kubernetes Patterns” (Ibryam, 2019), which provides more technical and conceptual insights to operators. Definitions made in these books were summarized in this document (to provide a common declaration of operators).

Ref: Dobies, J., & Wood, J. (2020). Kubernetes Operators. O'Reilly.

Michael Hausenblas and Stefan Schimanski wrote a book about Programming Kubernetes, which provides deeper insights into client-go, custom resources, but also about writing operators.

Ref: Michael Hausenblas and Stefan Schimanski, Programming Kubernetes: Developing Cloud-Native Applications, First edition. (Sebastopol, CA: O’Reilly Media, 2019).

Google provided a blog post about best practices for building Kubernetes Operators and stateful apps. Some of the advisories of this post take place in the best practices section of the whitepaper (https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps).

Many documents describe the capability levels (also known as maturity levels) of operators. Since there could be cases where an operator that supports all features that fall on the highest capability level but does not support some lower level features, this document chooses to cover “capabilities” rather than “capability levels”. The capabilities required for each capability level, however, are taken into consideration.

Ref: Operator Framework. (n.d.). Operator Capabilities. Operator Framework. Retrieved 11 2020, 24, from https://operatorframework.io/operator-capabilities/,
https://github.com/cloud-ark/kubeplus/blob/master/Guidelines.md

The CNCF TAG Security spent a lot of effort to add security-related topics to this whitepaper. As the content of this whitepaper should mostly cover operator-related security measures, they wrote a cloud native security whitepaper which is a very useful source when dealing with cloud native security (https://github.com/cncf/tag-security/blob/main/security-whitepaper/cloud-native-security-whitepaper.md).

## Bibliography

* Dobies, J., & Wood, J. (2020). Kubernetes Operators. O'Reilly.
* Ibryam, B. (2019). Kubernetes Patterns. O'Reilly.
* Operator Framework. (n.d.). Operator Capabilities. Operator Framework. Retrieved 11 2020, 24, from https://operatorframework.io/operator-capabilities/
* Philips, B. (2016, 03 16). Introducing Operators: Putting Operational Knowledge into Software. CoreOS Blog. Retrieved 11 24, 2020, from https://coreos.com/blog/introducing-operators.html
* Hausenblas, M & Schimanski, S. (2019). Programming Kubernetes. O'Reilly.
## Contributors

### Contributors
- Philippe Martin (github.com/feloy)
- Noah Kantrowitz (github.com/coderanger)
- John Kinsella (github.com/jlk)
- Roland Pellegrini (github.com/friendlydevops)
- Cameron Seader (github.com/cseader)

- Jennifer Strejevitch (github.com/Jenniferstrej)
- Omer Kahani (github.com/OmerKahani)
- Thomas Schuetz (github.com/thschue)
- Grzegorz Głąb (github.com/grzesuav)
- Alex Jones (github.com/AlexsJones)

### Reviewers

**Add yourself if you reviewed the document**
- Alex Jones (github.com/AlexsJones)
- Michael Hrivnak (github.com/mhrivnak)
