---
title: "Platform as a Product: Understanding the Personas"
slug: paap-personas
date: 2025-01-16 12:00:00 +0000
author: Valentina Rodriguez Sosa, Colin Griffin 
categories:
- Article
tags:
- WG Platforms
- Community Contributions
---

# Platform as a Product Overview

Platform as a Product is a critical topic in the industry because it helps teams to work agile in our forever changing organizations and market. Platform as a Product is key to helping us move quickly and be ready for new technology in a standardized way. According to the [CNCF Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/), Platform as a product is defined as:

Platform as a product: A platform exists to serve the requirements of its users and it should be designed and evolved based on those requirements, similar to any other software products. Platforms should provide the necessary capabilities to support the most common use cases across product teams and prioritize those over more specific capabilities that are only used by a single team to maximize the value delivered.


# Understanding the personas

When considering its users, we need to identify the different personas such as: Developers, ML Engineers, Data Scientists, Platform Engineers, and others.

The personas would focus on different aspects of the platform, and these could be represented in different organizations on one or multiple roles and teams.

- **Builders** (focus on platform and beneficiary experience):

  - Enabling Day2 Platform Operations
  - Setting up the platform
  - Setting up security
  - Platform Capabilities for AI
  - Platform capabilities for HPC workloads

- **Enablers** (focus on end-users and application capabilities):

  - Enabling cloud-native and legacy workloads with best practices such as CI/CD and security guardrails.
  - Enabling user experience and self-service capabilities
  - Build automation practices to simplify onboarding experiences for end users.
  - Configuration integrations and third-party tools

- **Consumers** - Platform Customers (Developers):

  - Access the platform to maintain and build applications
  - Build any applications from legacy systems, cloud-native, AI
  - Might not interact with the platform directly.

- **End-Users (customers)**:

  - Customers who are the end-users of the applications and systems running on top of the platform.
  - Might not interact with the platform directly.

- **Service Providers**:
  - Organizations who provide a Platform on top of Kubernetes.
  - Consulting organizations that help teams drive implementations and adoption around the platform


# Personas interactions

The **Platform Builders** are those who are installing the platform and configuring the platform in an organization. These are the teams who are responsible for the platform itself. These personas can be a group of teams dedicated to diverse aspects of the platform, networking teams, security, and Platform Engineers, whether they are internal teams to the organization or work with service providers to provide the platform and build configurations on top of it.

The **Platform Enablers** could be composed of DevOps, Middleware teams, and Migration teams, who are mostly dedicated to building application capabilities and user experience with best practices on top of the platform and work directly with Developers and data Scientists. These personas will also interact with Platform Builders to ensure the platform foundation is ready for the capabilities required. They can be internal teams, external consulting teams, or a mix of both.

The **Platform Consumers** could be composed of Developers, Software Engineers. They are the personas who build and enrich applications from legacy systems, AI workloads, microservices or any workload that will run on top of the Platform to serve a business needs. They usually are in the Line of Business, and work might work directly with Platform Enables to ensure application capabilities are in place and access self-service and user experience. They can be internal teams, external consulting teams, or a mix of both.

- The **Platform End-Users**, these personas are an organization customer. They are the main reason why the platform exists and what drives the organization's business. They might interact or not directly with the platform by accessing a UI, service, AI, or any other workload. They will often work with teams closer to the platform consumers.

- The **Service Providers** provide platforms, toolings, and services to help organizations move faster into the cloud native ecosystem. These organizations are focused on resolving common problems that the industry faces and provide diverse tools and frameworks to resolve them. They can be internal teams, external consulting teams, or a mix of both.

<img src="../assets/paap_personas_interactions.jpg" width=1000px />
