---
title: Platforms Working Group Charter
description: The charter describes the mission and tactics of the Platforms working group (WG)
---

## Problem Statement
In most app-delivery scenarios, the packaging format and delivery mechanism of the application artifacts are targeted, but not necessarily the app's infrastructure dependencies such as data stores and message queues. That is, application and infrastructure delivery are not coordinated. Often, applications are heavily dependent on infrastructure resources that are not directly linked to a specific deployment, and therefore problems with non-existing infrastructure resources might cause deployments to fail. In addition to this, the application and infrastructure lifecycles are not synchronized, creating additional complexity and challenges when delivering workloads.

Example:
* Developers using a storage class for testing an application locally that is not available in higher environments.
* Deployment of an application workload is a separate approval process and journey as to deploying the necessary ingress to route traffic to that service.
* Delivering complex micro-service architecture and a sustainable GitOps deployment pattern are treated as separate but related workflows.

Setup of a CI/CD pipeline and its constituent parts to enable the delivery of applications in coordination with infrastructure is part of institutional knowledge and not easily transferable across organization, system nor domain boundaries.

Additionally, it is often assumed that infrastructure is always available when dealing with application delivery. At some point, it might be useful that infrastructure could also be deployed by GitOps mechanisms and/or using the deployment pipeline. Therefore, there is always a cut between the infrastructure deployment and the application delivery/deployment tooling, which might lead to deployment problems and misconfigurations.

Currently, it seems that there are no ubiquitous best practices or recommendations for these use cases and no standard for declaring an entire application in a platform-agnostic way.

There are projects like Crossplane and Terraform primarily used for provisioning infrastructure and other tools like Argo, Flux and Keptn for provisioning applications on that infrastructure . There are also emerging projects like OAM and Dapr to abstract infrastructure and "inject" it automatically on behalf of apps, but these have not (yet) been broadly adopted by implementation providers, i.e. public cloud platforms. This working group should clarify what application and infrastructure coordination could look like and develop best practices for such cases.

### What combinations of tooling are available out there that aim to resolve this problem, and what are the gaps encountered?

This section aims to propose a few combinations of currently existing solutions, evaluate their pros and cons, and what bits are missing (taking the example above as a first use case).

![App Enablement Tooling](img/charter_app_enablement.png)

### Examples of known patterns aimed to deploy infrastructure:

Without any claim to comprehensiveness:
* Terraform
* Crossplane (Do we need a sentence covering their primary purpose?)
* ACK
* Pulumi
* CDK
* Open Service Broker (https://www.openservicebrokerapi.org/)

### Examples of known patterns aimed to deploy applications:

#### GitOps
This pattern is built on top of existing tools like: helm, kustomize or raw yaml and automate applying changes from source of truth in Git repo to the Cluster. ArgoCD and Flux are some examples of projects that implement this pattern.

#### Application Operator
This pattern is intended to enhance native Kubernetes resources like Deployment to deploy applications and manage their lifecycle. One of the critical features is canary deployment that requires coordination with Ingress or Service Mesh and domain knowledge about the application. ArgoRollout and Flagger are examples of projects that implement this pattern with these advanced features.

#### Declarative Pipelines
This pattern allows you to build a declarative pipeline that encapsulates some workflow or process. This could be part of the CI process to build an artifact, test or ensure it meets security controls. They can also be used in the CD lifecycle in deploying an artifact and running custom tests or implementing custom canary logic. Declarative pipeline can be thought of as a [directed graph](https://en.wikipedia.org/wiki/Directed_acyclic_graph) with decision points to move to the next point in the graph. The decision could be automated or require manual approval tied to a notification system. Projects like Keptn and ArgoWorkflow are examples of solutions that enable building declarative pipelines.

#### Composition Operator
The Kubernetes CRD to representation for some resources is complex and at times has dependency on other CRDs. There is also a need for separation of concern between an application and operation teams, especially when it applies to infrastructure resources. This pattern allows you to compose resources using a number of other CRDs as building blocks and simplify or hide the number of parameters that must be provided by the top level CRD. The CrossPlane XRD/XRC and KubeVela are examples of projects that provide this pattern.

#### Infrastructure Operator
There is a need to declare cloud provider infrastructure resources as CRDs so that they can be integrated as part of application deployment lifecycle on Kubernetes. The Infrastructure Operator pattern allows CRDs to be applied to the Cluster and the Operator implements the necessary logic to converge requests with desired state. The Operator integration to the cloud provider can take many forms, among them native cloud provider APIs, Cloud Formation Templates or TerraForm among them. CrossPlane Provider, AWS Controller for Kubernetes (ACK) are examples of projects that provide this pattern.

## Alignment with TAG App Delivery Charter
As application delivery is often coupled to the underlying infrastructure (when thinking of services like external databases, message queues,...), this can often impact package formats and the application delivery workflow. This topic would handle the “Application definition, including description, parameter and configuration”, “Application bundling and deployment”, and “Application delivery workflow and strategy” topics of the TAG charter. As these should be done using configuration-driven tools (“GitOps”), this also touches the “Configuration source driven workflow” area.

## Working mode / expected outcome
The group discusses concepts, plans and develops a demo infrastructure (as code) to handle these use cases (e.g. App-Ready-Platform as code). This might be implemented using different tools (link to landscape) and could be a blueprint for end users. Furthermore, the validated best practices might then be documented in a white paper.

## Goals
_Focusing on the key stakeholder, who in this scenario is an engineer potentially with a CKA/CKAD looking to enable the delivery of an application workload on cloud infrastructure._

* Vendor and End-user interviews.
* Focused questions that help identify successes and frustrations of products.
* Capturing the current practices and the landscape.
* Landscape radar
* Provide interoperability examples between IaC and CD tools in the Podtato-head project.
* Give end-users ideas and examples of how they could integrate application and infrastructure deployment.
* Provide patterns in a white paper based on practical work and how end-users are implementing them. Present practices and trends seen occurring within the industry that would be valuable to highlight to end-users.

## Non-Goals
* Creating a new type of standard
* An opinion on how to build microservice applications or cloud-native architecture.
* Defining how deployments should be done.
* Creation of a new CNCF open source project.