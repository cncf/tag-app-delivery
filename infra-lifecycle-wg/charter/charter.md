# Infrastructure Lifecycle Working Group Charter

## Problem Statement

As the cloud-native approach matures, the workloads we run have increasingly complex infrastructure needs. While we all strive to control costs, enforce best practices, and ensure secure configurations, the reality is often fragmented. Today's workloads reside in complex hybrid environments spanning on-premises physical infrastructure, public/private cloud, and Edge/IoT. This heterogeneity creates a significant burden for infrastructure engineers, particularly when it comes to maintaining workloads in production ("Day 10 and beyond"). The complexity for those managing infrastructure is growing rapidly across multiple dimensions.

Examples:

* Control planes handling the lifecycle of infrastructure
* State management
* Disaster recovery
* Automation
* Testing
* Observability

Despite the complexity and sophistication required, not enough has been done to meet the challenges. We're seeing significant investment in new open-source infrastructure projects both in and out of CNCF but effective tooling for cloud-native infrastructure lifecycle management remains elusive. The Platform Engineering movement emphasises treating infrastructure as a product, but there's no standardised approach for managing its lifecycle.

While savvy users are embracing cloud-native practices, infrastructure requirements are inherently diverse. However, there's an opportunity to champion technology-agnostic best practices. Infrastructure lifecycle management deserves the same level of attention and planning we dedicate to established areas of cloud-native development. This ensures security, resilience, manageability, sustainability, and observability. This working group aims to bridge this critical gap by clarifying what a standardised approach for managing the infrastructure lifecycle looks like and develop best practices.

## Goals

Focusing on the key stakeholder, cloud and site-reliability engineers responsible for enabling application delivery on cloud infrastructure.

* Conduct vendor and end-user interviews to identify product successes and frustrations.
* Capture current infrastructure lifecycle management practices and landscape.
* Provide end-users with ideas and examples for integrating application and infrastructure deployment.
* Draft a white paper detailing practical implementation patterns and industry trends valuable to end-users.
* Develop a framework for managing cloud-native infrastructure lifecycle across diverse environments (on-premises, public/private cloud, Edge/IoT), focusing on core principles and best practices.
* Document a comprehensive set of best practices for cloud-native infrastructure lifecycle management, covering:  
  * Infrastructure as Code
    * Development Processes
    * Design and Abstractions
  * Control planes
  * State management
  * Disaster recovery
  * Automation
  * Testing
  * Observability
* Create resources and knowledge for the cloud-native community, including:
  * White papers on patterns and best practices from real-world implementations
  * Educational materials highlighting industry trends and insights for end-users.

## Non-goals

* This working group is not intended to endorse or promote any specific infrastructure management tools or technologies.
* This working group won’t develop a new type of standard to infrastructure lifecycle management.
* This working group won’t create a new CNCF open source project.

## Examples of known patterns aimed to manage lifecycle of infrastructure

### Infrastructure as Code Tools

There are various tools enabling practitioners to define and manage the lifecycle of infrastructure through code, enabling consistent and scalable deployments of their cloud infrastructure. Tools like Terraform, CloudFormation, Pulumi and Crossplane allow practitioners to describe their infrastructure in a declarative manner, ensuring reliability in managing the lifecycle of cloud infrastructure.

### Infrastructure Tool Orchestration

The growing need for GitOps-style deployments drives demand for orchestrating declarative cloud infrastructure using Infrastructure as Code Tools. These orchestrators manage cloud resources either using native APIs or IaC tools. They offer flexibility across cloud providers and tooling preferences. Tools like TACoS, Crossplane, and AWS Controller for Kubernetes (ACK) exemplify this powerful approach, simplifying cloud infrastructure management.

## Examples of known tools aimed to manage the lifecycle of infrastructure:

Without any claim to comprehensiveness:

* Ansible
* AWS CloudFormation & AWS CDK
* Bicep
* Crossplane
* Metal³
* OpenTofu
* Pulumi
* Radius
* Terraform
* Tinkerbell

## Alignment with TAG App Delivery Charter

The Infrastructure Lifecycle working group tackles the underlying infrastructure abstractions that serve as essential building blocks for platform products, an area addressed by the Platform Working Group. Application delivery is often coupled with infrastructure, think of databases, message queues and runtime environments. Originally, the Platform Working Group focused on clarifying the coordination between application development and infrastructure delivery. While this remains important, the group's focus has evolved to consider platforms as complete products. This broader perspective necessitates a renewed emphasis on the underlying infrastructure abstractions that provide the essential building blocks for these platform offerings, such as disaster recovery, infrastructure lifecycle state management, testability and more. The Infrastructure Lifecycle Working Group will address such topics in this TAG charter.

## Alignment with TAG Runtime Charter

We partner with the Runtime TAG to ensure that cloud-native runtime environments provide the fundamental workload execution abstractions and mechanisms needed to integrate with infrastructure lifecycle management tools. This collaboration focuses on guaranteeing that both runtime and infrastructure layers work cohesively to deliver applications effectively.

## Working mode/expected outcome

The Infrastructure Lifecycle Working Group will achieve its goals through regular meetings ([Zoom](https://zoom-lfx.platform.linuxfoundation.org/meeting/96148400770?password=767d45df-c7cf-4400-9239-e789115cc85e&invite=true)), open communication channels ([#wg-infrastructure-lifecycle](https://cloud-native.slack.com/archives/C06USDTN683) on Slack), and collaboration with other TAGs. This will result in a standardised approach for managing the lifecycle of infrastructure in a cloud-native setting, develop a set of comprehensive best practices, and publish valuable resources for the cloud-native community around infrastructure lifecycle management
