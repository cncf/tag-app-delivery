---
title: "Demystifying Composability on Platforms: extending Platforms to business needs"
slug: composable
date: 2025-01-29 12:00:00 +0000
author: Colin Lacy, Simon Forster, Valentina Rodriguez Sosa
categories:
- Article
tags:
- WG Platforms
- Community Contributions
---

## Introduction

Let’s start with what’s a Platform, according to the [CNCF Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/#what-is-a-platform),  “A platform for cloud-native computing is an integrated collection of capabilities defined and presented according to the needs of the platform’s users.  The specific set of capabilities and scenarios supported by a platform should be determined by the needs of stakeholders and users. And while platforms provide these required capabilities, it’s critical to note that platform teams should not always implement them themselves.”

Composable platforms promote flexibility and adaptability in the configuration and setup of the Platform. These individual solutions are then combined to form a larger, more feature-rich Platform. This allows configuring different components to achieve various technical and business needs by providing specific components or allowing setup of this component. When looking for a platform, understanding the end goal – bringing value to the business – is critical for ensuring the right capabilities meet the organization’s needs. 

Composability, then, is the characteristic of a platform that, through different user experiences and a broad range of components, expands to fulfill technical needs at the end, supporting business value and increasing competitiveness advantage.

As the platform supports and enables different personas, each persona will have distinct needs and usage of the platform and, accordingly, differing requirements and perspectives on what composable means. Platform consumers may leverage some or all of the composable capabilities, depending on their needs. For example, while one development team may choose to only make use of the platform’s full capabilities to build, test, scan, and store artifacts; another team may opt into the build and scan capabilities only, storing their artifacts in a different repository from the one provided by the platform team. The flexibility to consume only the parts that provide business value based on a team’s specific business deliverable, as opposed to an all-or-nothing approach, is a hallmark of composable platforms.

<img src="../assets/platforms-def.drawio.png" width=1000px />

Fig 1. [Platform Capabilities](https://tag-app-delivery.cncf.io/whitepapers/platforms/#capabilities-of-platforms)

It’s worth noting that this loose coupling does not preclude the benefits of interoperable components. While capabilities such as build and test, as well as artifact storage may be consumed separately, a composable platform can still provide benefits for those consumers who wish to use the two together, such as automatic image signing and SBOM generation. 

A key concept in building platforms is the persona. We refer to a persona as a group of stakeholders within a platform.
Note that a persona is not the same as a role, and is intended to apply to different roles in team topologies. Some individuals will fit into one or more persona - especially in smaller organizations where team members are expected to wear multiple hats. 


# Characteristics of a Composable Platform according to the personas


- **Builders**  (focus on platform and beneficiary experience): From being extensible and configurable, the platform should support a variety of underlying infrastructure on which the platform will run, from on-premise to cloud.
- **Enablers**  (focus on end-users and application capabilities): Provide availability to access different installation methods and configure the platform by allowing the custom configurations, extend the platform to additional infrastructure.  Increase platform capabilities to either of the following two roles- Developers and Business Customers
- **Consumers**  - Platform Customers (Developers) components are the tools that add application capabilities, such as database, observability, and application log management to accomplish business goals. Decreasing lead time in development will increase developer productivity.
- **End-users (customers)**  -  End users don’t interact directly with the platform but benefit from the increased productivity of the platform consumers, which reduces the time to market. Platform capabilities and application features will contribute to business use cases and add customer value. Customers can also measure the value of a strong platform through enhanced reliability and availability, building trust over time.  Furthermore, the ability to support a variety of workloads helps the platform meet business requirements and provide value to the end users. 


Learn more about the personas: https://tag-app-delivery.cncf.io/blog/paap-personas/

# How do the different personas view a platform?

The following diagrams help us explore how a platform looks from the  differing perspective of each  persona and how the platform evolves with the new components.

### [From Builders:](https://tag-app-delivery.cncf.io/blog/paap-personas/)

The underlying infrastructure may not necessarily be part of the platform.  However, the platform takes advantage of the underlying hardware resources and services. The following diagram shows an example of how a composable platform expands its components according to the organization’s setup and configuration requirements.


<img src="../assets/composable_builders.png" width=1000px />

Once the infrastructure is defined, the platform can be set up; as a platform expanded using different configurations from networking and security configuration.  Once the platform is up and running and accessible it can be handed over to the next team.

Fig 2. Platform Expands within an infrastructure

Once the infrastructure is defined, the platform can be set up as a platform expanded using different configurations from networking and security until the platform is running and accessible for the next team.


### [From Platform Enablers:](https://tag-app-delivery.cncf.io/blog/paap-personas/)

Growing a Platform by increasing platform and application capabilities, taking advantage of the platform components or new components selected by the organization. 


<img src="../assets/composable_enablers.png" width=1000px />
Fig 3. Platform Expands within platform and application capabilities

After cluster installation and setup typically with a Kubernetes distribution, platform engineers embarked on Day 2 operation activities, ensuring relevant governance and security are in place.  Next, the teams will work to ensure an efficient onboarding experience and a great user experience, allowing teams to access the platform directly or indirectly and bringing application capabilities closer to developer teams. It’s critical to meet the business’s scalability, resilience, and high availability needs before moving forward with production workloads.


### [From Developers (platform end-users):](https://tag-app-delivery.cncf.io/blog/paap-personas/)

The platform expands with each component, building out CI/CD pipelines, then moving on to tune resources to meet requirements, and ensuring the availability to run multiple and diverse workloads. The platform can be extensible enough to support different third-party tools for application and user needs, such as databases, interconnectivity, and security tools. 


<img src="../assets/composable_dev.png" width=1000px />
Fig 4. Platform Expands within new workloads, tools and resources.

End users of the platform, such as Developers, MLOps, and Software Engineers, will benefit from the platform's readiness to start bringing new workloads and promoting best practices from CI/CD, accessing more resources, and setting up third-party tools to fulfill business needs.


### [From Customers (platform end-users):](https://tag-app-delivery.cncf.io/blog/paap-personas/)

As the platform expands to fulfill technical and user needs, each expansion means new components that make the platform composable. A composable platform will bring value to the business by providing scalability and flexibility to different personas to achieve business goals. Examples of this might be increased trust, speedy service, or cost efficiency for those funding the service.  While this persona will receive an indirect benefit from platform composability, they have a sizable role in driving the priority of composable capabilities and components, as facilitating their evolving needs helps determine the necessary platform capabilities for increasing business value. 


# Conclusion

Composability allows the different personas in an organization to get what they need from a platform without undue investment by stakeholders in areas that are of secondary importance, allowing for flexibility and more efficient onboarding.  We discussed what composable platforms are, and how they can help a business to succeed in their goal of deriving the most business value from their investment in cloud native technology.  