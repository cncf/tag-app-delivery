---
title:  Platform Engineering in 2024, Industry Trends and Emerging Focus (An holistic proposal for Internal Developer Platforms named Platform Engineering ++)
slug:   proposal-platform-engineering-++
date:   2024-06-25 15:21:00 +0000
author: Giulio Roggero
categories:
- Article
tags:
- Community Contribution
- WG Platforms
---

In this blog post, I'll explore Platform Engineering, covering its diverse interpretations and implementations across organizations.

I'm trying to answer to the following question: *"Should Internal Developer Platforms be limited to self-service infrastructure provisioning and application deployment?"*

Organizations approach Platform Engineering in different ways:

- Some build self-service tools for infrastructure provisioning, giving developers autonomy over infrastructure management.
- Others focus on enhancing the developer experience, simplifying coding and deployment.
- Some adopt a marketplace-centric approach, creating a repository of reusable components like containers, data, and APIs.

While current Platform Engineering practices effectively address many aspects of simplifying people's lives, there are other areas that require attention. Data, ML, API, Security, Privacy, and others are crucial for a better Software Product Lifecycle. It is essential to consider whether these teams can benefit from the existing Platform Engineering practices.

By expanding the focus beyond a singular aspect, we can ensure a comprehensive and enhanced experience for all users.

I believe that Platform Engineering should encompass the entire end-to-end value chain to deliver products and applications to end users effectively. Often, Platform Engineering is “solely” associated with Infrastructure and DevOps simplification, with the primary goal of providing a self-service platform for developers. 

By envisioning this, we run the risk of creating new barriers between Platform Engineers and Developers, similar to the barriers that existed in the past between IT Operations and Developers. Furthermore, we now have Data, ML, API, and other engineers to consider.

In my opinion, expanding Platform Engineering and its tools to encompass the entire spectrum of Digital Applications is a worthwhile endeavor also for not typical aspects of what is usually called platform.

For example we can consider parts of a Platform also:

- a Design System reusable by several teams;
- a repository of libraries;
- a metadata catalog;
- the teams working agreements;
- a set of guardrails for ensuring legal and compliance requirements;
- a set of standards that application should follow.

I suggest calling this expansion **Platform Engineering ++**. The core elements, Infrastructure and DevOps plus Data/ML Engineering and plus Software Composability (API, Events, Micro Frontend, Libraries and all aspects of a Software Application that can be reusable and evolved with an Inner Source approach).

I believe this will lead to a more comprehensive and effective approach to application development and management. I will provide further justification for this position in the following paragraphs.

## Introduction to Platforms, a metaphor

Like a library where people bring books to share and people borrow books to read, Platforms are a place where people share resources. In the digital realm, platforms serve as virtual libraries, enabling individuals to share and access a diverse range of resources. 

![Library Platform Metaphor](/images/2024-06-20-pelibrary-platform-metaphor.png)

You can represent a Library as a Platform where Assets are provided in the form of Books, Video, Papers and more. The Library offers Capabilities like Catalog Collections, Reading Rooms, Cafes and people can use those capabilities thanks to a Research Assistant, a Website, a Subscription Service. Librarians keep everything working and well organized providing a self service experience to users that can be private people, schools, and other groups.

Library users are not only readers, but also potential writers. They may draw inspiration, gather facts, and formulate thesis from other books they find in the library, which they can use to create new works.

## Internal Developer Platforms

In this analogy, we can liken Librarians to Platform Engineers. Their primary objective is to make sure that users of the platform receive top-notch services and have a delightful experience while interacting with it.
In the realm of metaphors, books can be likened to various resources and tools (just some examples):

- A kubernetes cluster with all necessary software and configurations.
- A crossplane CRD to create an infrastructure resource.
- A kafka topic used for data streaming.
- A data product available for consumption.
- A software library designed for logging in the correct format, including the traceId.
- A web component library to compose in a micro frontend.
- An API for initiating payments through a digital payment provider.
- A complete application accessible to end users.

The facilities of a library can be (just some examples):

- A service catalog where all consumable and composable resources are listed.
- A self-service UI to create a new software element (infrastructure, application or other).
- A command line interface to view live logs in production.
- A monitoring system to see microservice metrics.
- A set of scorecards to gather information about team metrics.

The library, which I like to call the **Internal Platform** (or Internal Developer Platform, see next paragraph), is where all the technological magic happens. **Platform Engineers** manage this platform, ensuring that all Internal Platform Users have an exceptional experience. Their approach is product-oriented, focused on delivering a seamless and intuitive user experience.

Depending on the usage patterns of the platform users and the organization's specific requirements, Platform Engineers fine-tune the platform to deliver the necessary services.

A platform is a virtual place where resources (I will call them Items as a synonym) are systematically arranged and disseminated. By optimizing time utilization, more resources become accessible.

By effectively leveraging these items, that were books in the analogy, organizations can create innovative solutions, optimize operations, and gain a competitive advantage.

![Platform High Level View](/images/2024-06-20-platform-zoom-out.png)

Within the Internal Platform's Platform Capabilities, capability providers offer a range of fundamental resources (Items), including Infrastructure, DevOps Toolchains, SaaS Services, and Tools, which are organized and consistently curated by Platform Engineers.

Each capability constitutes an Item of the Platform and is characterized by a:

- **definition**: describes inputs, outputs, configurable behaviors, metrics and documentation;
- **life cycle**: an item goes through a life cycle that includes development, testing, deployment, operation and decommissioning.
- **consumption and composition**: items can be consumed and composed to create more complex applications and become other items to be consumed.

Product Teams can engage with and use these Items through user interfaces, command lines, and APIs. AI Agents can assist the team in simplifying usage, while the Items are organized in Catalogs with the corresponding documentation.

![Platform High Level View with Loop](/images/2024-06-20-platform-zoom-out-loop.png)

As a result of the collaboration, new applications are created. These applications can then be transformed into Raw Assets, which can be reused repeatedly by other teams, enhancing the organization's DevX. 

This cycle can be seen as a circular economy in software development, where resources are continuously reused and repurposed, leading to a more efficient and sustainable development process.

## Platform Items Lifecycle

Platform items come in several varieties, but possessing common characteristics:

- are described by a plain text file (there are several format that are emerging and I hope in the future we will have a standard);
- can be put in relationships each to other;
- have a life cycle for create, ship, run, operate and catalog that item in order to be consumed by Product and Application teams.

![Platform Resources Lifecycle](/images/2024-06-20-platform-lifecycle.png)

It's important to note that users can interact with the system through a UI or CLI, or through another software that automates some tasks, or via an AI agent based on LLM. 

If you had access to a comprehensive internal platform containing all the descriptions of behaviors and relationships necessary to run your application, how beneficial would it be to have an AI companion? 

Imagine having a companion that simplifies tasks such as finding items, configuring them, and releasing and operating those items in production, all through simple conversations with the AI. This companion would significantly streamline your workflow and enhance your overall productivity.

I propose referring to this as **"Conversational DevX”**, which will be the focus of my next blog post.

## Internal Developer Platform or Platform of Platforms or Internal Platform?

I don’t know if it should be better to say that an Internal Developer Platform is an ensemble of different platforms or that it’s just one of the platforms. This is an [open discussion](https://github.com/cncf/tag-app-delivery/issues/586) where we welcome conversation and other ideas.

Names are important but in this blog post I don’t want to focus on the name but on the content and I hope that together with the tag-app-delivery (https://github.com/cncf/tag-app-delivery) people we will figure out a standard nomenclature. 

As mentioned in the introduction of this blog post, Platform Engineering is more than Infrastructure and it isn’t an evolution of DevOps but is a way to reduce the cognitive load for people that are creating, delivering and operating software items like Applications, Data, API and ML Models.

The trend I see is that each type of software item has its platform. However, the user experiences across these platforms are becoming increasingly similar. This suggests a potential convergence of all software platforms into a single platform or a "platform of platforms."

An Item in the Internal Platform can be of different types:

- **Infrastructure Resources**: this encompasses the underlying hardware and software components that support your applications and services. It includes physical servers, virtual machines, containers, cloud platforms, data stores, databases, ML runtimes and more;
- **DevOps or Developer Platform Resources**: all tools for defining and running a toolchain, plus tools to operate and observe workloads, data, APIs, event, AI models at runtime;
- **Data, Events, APIs Resources**: data is a critical asset for many organizations. It can be structured, unstructured, or semi-structured and can come from various sources. It can be at rest or in movement. It can be updated by policies and emit events;
- **ML and AI Resources**: machine learning models are algorithms that can learn from data and make predictions. You can define, training, deploy and improve your models;
- **Composable Resources**: items can be orchestrated or choreographed. Depending on the type of the item you may use different patterns like Sagas or Micro Frontend composition; Composable Items are tools that allow you to compose;
- **DevX Resources**: DevX as a Product Resources (internal marketplace and software catalog): each item of the Internal Platform can be a valuable asset for other people. Provide a marketplace for that items and a way to manage the marketplace lifecycle: create, publish, curate, consume, review is relevant for creating a software circular economy;
- **Team Collaboration Resources**: teams work together within internal platforms, utilizing various items to facilitate communication and organize workflows. These items include issues, backlogs, documentation, and more. Understanding the Platform itself is essential for effective collaboration.

We can explode the diagram with different Platforms of the Internal Platform.

![Platform Full Diagram](/images/2024-06-20-platform-full.png)

The **Internal Platform** obtains "raw" assets such as virtual machines (VMs), Kubernetes as a Service clusters, and Function Platform as a Service tools as runtime resources.

DevOps tools are essential for managing resources and code lifecycle, forming a fundamental pillar alongside observability, security, and identity management services. Data stores such as NoSQL and SQL databases, data streams and object storage are commonly utilized in application development.

Additionally, LLMs models are frequently employed as a service via APIs or embedded within the runtime to enhance applications created by teams. SaaS applications, such as Salesforce, Dynamics 365, and SAP, serve as central hubs for various customer and product information, playing a significant role in the development of cloud-native applications.

All capabilities are managed with an **Infrastructure as Code** approach and the IaC manifests are managed with the lifecycle: code, ship, run, operate and organize team collaboration.

The same approach resource lifecycle is shared  among different kinds of platform items: developers, infrastructure, application orchestration (API, Events, Flows), machine learning and data. All of them are Platforms inside the **Internal Platform** that are interconnected and may share resources like a database cluster or a security policy. 

The descriptor of that items are manifest that can be gathered in the concept of **Application as Code** (AaC): with the same approach of describing the desired state of the infrastructure you describe the desired state of the items of all platforms that compose the cloud native application.

Inside the **Internal Marketplace** are defined: the reusable blueprint for all platform items, the software catalog that you can reuse and all other items that come from each team that can be a building block for other teams. Thanks to that Marketplace you can enable a **Platform Composability** strategy.

The Internal Platform offers various interfaces, including a user interface (UI) and a command-line interface (CLI). Additionally, users can interact with the platform programmatically through an API. The **AI** serves as a **companion**. IaC and AaC manifests are provided as a context to the LLM and the AI simplify tasks for platform users. These tasks include resource discovery, troubleshooting microservices and resources, and creating new resources.

**Platform Engineering++** is a software engineering discipline that focuses on the Internal Platforms with a holistic approach.

## Conclusions

By adopting that **Platform Engineering++** paradigma, I believe that the **Platform Engineering initiative's return on investment (ROI)** will grow. This is because the platform becomes the foundation for business applications, eliminating obstacles between teams. As a result, all teams have a unified perspective of the end-to-end applications built on top of it.

For now I stop here and I ask for feedbacks :-). What do you think about it? Please leave a comment in the issue https://github.com/cncf/tag-app-delivery/issues/586 and join CNCF wg-platforms working group if you are interested.

The journey is just at the beginning!

## References

In this blog post, when I mention "Platform," I specifically refer to "Internal Developer Platform" or, as I prefer, "**Internal Platform**," as these platforms are not exclusive to developers but also encompass Data, ML, Cloud, and other engineers. It's important to distinguish these Internal Platforms from Business Platforms such as Uber, Airbnb, or Netflix. Internal Platforms assist organizations in building and operating their Business Platforms. For example, Spotify created Backstage as an Internal Developer Portal and has incorporated additional tools to develop its Internal Platform to operate Spotify consumer platform.

Please note that there are already papers that are defining some aspects that I’m going to discuss in this blog post: 

- the CNCF Platform White Paper (https://github.com/cncf/tag-app-delivery/blob/main/platforms-whitepaper/v1/index.md)
- the Platform Glossary (https://github.com/cncf/tag-app-delivery/blob/main/platforms-wg/glossary/_index.md)
- the Platform Engineering Maturity Model (https://github.com/cncf/tag-app-delivery/blob/main/platforms-maturity-model/v1/index.md)
- the Platform of Platform initiative (https://github.com/cncf/tag-app-delivery/issues/542).

I hope that this blog will contribute to brainstorming.

## Thanks

This is an original blog post written for the CNCF TAG App Delivery community. I hope you enjoy it!

I express my sincere gratitude to the CNCF TAG App Delivery community for establishing a virtual place that fosters open-minded discussions and inclusivity.

_Special thanks to who has reviewed this post! Atulpriya Sharma, Lou Bichard, Tyler Pate, Abby Bangser,  Stefan Daugaard Poulsen, Chris Plank, Marsh Gardiner, Rob White and David Stenglein for their insightful reviews._
