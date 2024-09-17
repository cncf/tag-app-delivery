---
title: Infrastructure Lifecycle Working Group Charter
description: This charter outlines the mission, scope, deliverables, and long-term vision of the Infrastructure Lifecycle Working Group.
---

## Problem Statement

As the cloud native approach matures, the workloads we run have increasingly complex infrastructure needs. While we all strive to control costs, enforce best practices, and ensure secure configurations, the reality is often fragmented. Today's workloads reside in complex hybrid environments spanning on-premises physical infrastructure, public/private cloud, and Edge/IoT. This heterogeneity creates a significant burden for infrastructure engineers, particularly when it comes to maintaining workloads in production ("Day 10 and beyond"). The complexity for those managing infrastructure is growing rapidly across multiple dimensions.

Despite the complexity and sophistication required, not enough has been done to meet the challenges. We're seeing significant investment in new open source infrastructure projects both in and out of CNCF but effective tooling for cloud native infrastructure lifecycle management remains elusive. The Platform Engineering movement emphasises treating infrastructure as a product, but there's no standardised approach for managing its lifecycle.

While savvy users are embracing cloud native practices, infrastructure requirements are inherently diverse. However, there's an opportunity to champion technology-agnostic best practices. Infrastructure lifecycle management deserves the same level of attention and planning we dedicate to established areas of cloud native development. This ensures security, resilience, manageability, sustainability, and observability. This working group aims to bridge this critical gap by clarifying what a standardised approach for managing the infrastructure lifecycle looks like and develop best practices.

## Deliverable

Develop a framework for managing the lifecycle of infrastructure in public, private, or hybrid cloud environments based on cloud-native principles. This framework will guide end-users in managing infrastructure to ensure it is secure, resilient, manageable, sustainable, and observable.

* **Start by**, collaborating with relevant Technical Advisory Groups (TAGs), Working Groups (WGs), vendors and end-users to integrate domain-specific expertise.
* **Next**, develop practical examples and reference architectures to guide end-users in applying the Infrastructure Lifecycle framework effectively across varied infrastructure environments.
* **Finally**, publish real-world case studies and collect feedback from end-users on their experiences with applying the Infrastructure Lifecycle framework.

The key categories for the framework are:
* Infrastructure as Code
  * Development processes
  * Design and abstractions
* Control planes
* State management
* Disaster recovery
* Automation
* Testing
* Observability

## Long-term vision
After delivering the framework, we will assess its effectiveness and decide whether a longer-term Working Group or TAG is needed. This approach ensures the framework remains relevant and adaptable to evolving infrastructure management needs.

## Out of Scope

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

The Infrastructure Lifecycle working group tackles the underlying infrastructure abstractions that serve as essential building blocks for platform products, an area addressed by the Platform Working Group. Application delivery is often coupled with infrastructure, think of databases, message queues and runtime environments.

Originally, the Platform Working Group focused on clarifying the coordination between application development and infrastructure delivery. While this remains important, the group's focus has evolved to consider platforms as complete products. This broader perspective necessitates a renewed emphasis on the underlying infrastructure abstractions that provide the essential building blocks for these platform offerings, such as disaster recovery, infrastructure lifecycle state management, testability and more. The Infrastructure Lifecycle Working Group will address such topics in this charter.

## Alignment with TAG Runtime Charter

We partner with the Runtime TAG to ensure that cloud native runtime environments provide the fundamental workload execution abstractions and mechanisms needed to integrate with infrastructure lifecycle management tools. This collaboration focuses on guaranteeing that both runtime and infrastructure layers work cohesively to deliver applications effectively.
