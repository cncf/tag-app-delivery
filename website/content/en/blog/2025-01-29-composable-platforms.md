---
title: "Demystifying Composability on Platforms: extending Platforms to business needs"
slug: composable
date: 2025-01-29 12:00:00 +0000
author: Valentina Rodriguez Sosa
categories:
- Article
tags:
- WG Platforms
- Community Contributions
---

## Introduction


Let’s start with what’s a Platform, according to the [CNCF Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/#what-is-a-platform),  “A platform for cloud-native computing is an integrated collection of capabilities defined and presented according to the needs of the platform’s users… The specific set of capabilities and scenarios supported by a platform should be determined by the needs of stakeholders and users. And while platforms provide these required capabilities, it’s critical to note that platform teams should not always implement them themselves.”

Composable platforms promote flexibility and adaptability to configure and setup the Platform. It allows configuring different components to achieve technical and business needs by giving specific components or allowing setup of this component. When looking for a platform, understanding the end goal to bring value to the business is critical to ensuring the right capabilities and organization needs. Composable is the characteristic of a platform that, through different user experiences and components, expands to fulfill technical needs at the end, supporting business value and increasing competitiveness advantage.

As the platform supports and enables different personas, each persona will have different needs and usage of the platform and then distinct requirements and perspectives regarding what composable means.


# Characteristics of a Composable Platform according to the personas

- **Builders** (focus on platform and beneficiary experience): From being extensible and configurable, the platform should support a variety of underlying infrastructure in which the platform will run, from on-prem to cloud.
- **Enablers** (focus on end-users and application capabilities): Provide availability to access different installation methods and configure the platform by allowing the custom configurations, extend the platform to additional infrastructure.  Increase platform capabilities to either 
- **Consumers** - Platform Customers (Developers)
 - **End-users** (customers): components are the tools that add application capabilities, such as Database, observability, etc. Additionally, the availability to support different workloads, can be seen as components that enrich the platform to accomplish business requirements and provide value to the end users. 

## Defining the Ecosystem of a Composable Platform according to the different perspectives

### [From Builders:](https://tag-app-delivery.cncf.io/blog/paap-personas/)

The underlying infrastructure is not necessarily part of the platform, but platform availability to run on the underlying infrastructure and take advantage of underlying hardware resources and services. The following diagram shows an example of how a composable platform expands its components according to the operations setups and configurations. 


<img src="../assets/composable_builders.png" width=1000px />
Fig 1- Platform Expands within an infrastructure

Once the infrastructure is defined, the platform can be set up as a platform expanded using different configurations from networking and security until the platform is running and accessible for the next team.


### [From Platform Enablers:](https://tag-app-delivery.cncf.io/blog/paap-personas/)

Growing a Platform by increasing platform and application capabilities, taking advantage of the platform components or new components selected by the organization. 


<img src="../assets/composable_enablers.png" width=1000px />
Fig 2- Platform Expands within platform and application capabilities

After the installation and cluster setup, platform engineers embarked on Day 2 operation activities, ensuring governance and security were in place.  Next, the teams need to ensure a good onboarding experience and a great user experience, allowing teams to access the platform directly or indirectly and bringing application capabilities closer to developer teams. Ensuring scalability, resilience, and high availability before moving forward with production workloads.


### [From Developers (platform end-users):](https://tag-app-delivery.cncf.io/blog/paap-personas/)

The platform expands with each component, from building CI/CD pipelines to increasing resources and the availability to run multiple and diverse workloads. The platform can be extensible enough to support different third-party tools for application and user needs, such as databases, interconnectivity, and security tools. 


<img src="../assets/composable_dev.png" width=1000px />
Fig 3- Platform Expands within new workloads, tools and resources.

End users of the platform, such as Developers, MLOps, and Software Engineers, will benefit from the platform's readiness to start bringing new workloads and promoting best practices from CI/CD, accessing more resources, and setting up third-party tools to fulfill business needs.


### [From Customers (platform end-users):](https://tag-app-delivery.cncf.io/blog/paap-personas/)

As the platform expands to fulfill technical and user needs, each expansion means new components that make the platform composable.A composable platform will bring value to the business by providing scalability and flexibility to different personas to achieve business goals.