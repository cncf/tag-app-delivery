---
title: Glossary
description: "Defines key terms used in the Platforms Working Group's writings."
---

See also: [Cloud Native Glossary](https://glossary.cncf.io/)

If you wish to refer to these definitions outside the scope of the working group's papers, please note that they have been written in the context of both the CNCF and application delivery.

## Platform
A collection of capabilities, documentation, and tools that support developing, deploying, operating, and/or managing the delivery of products and services. A platform may include web portals, APIs, CLIs, protocol definitions, documentation, standards, and/or golden path templates. When done well, platforms enable faster and more reliable delivery of an organization's applications and services.

Depending on the scope and audience for a platform, it may sometimes be referred to as a “Developer Platform,” an “Internal Developer Platform (IDP),"  a “Delivery Platform,” an “App Platform,” or even a “Cloud Platform.” The term “Platform-as-a-Service (PaaS)” is also often used to describe platforms that are purchased or otherwise adopted from outside an organization, providing a more managed but often less customizable platform solution.

## Platform engineering
The design, construction, operation, and evolution of a platform. One way to view the practice is as an empathy-driven approach towards sociotechnical organizational design<sup><a href="https://hazelweakly.me/talks/qcon-sf-2023/slides#22">1</a></sup>. In this light, it is a continuous process by which an organization learns how and where to invest and to make strategic business bets internally, rather than just externally.

## Platform team
The people responsible for building and managing the platform(s). Platform team members include **platform engineers**, who focus on building the tool and capabilities that comprise the platform experiences. It may include dedicated **platform product manager** roles that focus on meeting internal customer needs while also supporting the organization’s broader strategic goals. As the platform evolves, other specialist roles, such as operators, QA analysts, UI/UX designers, technical writers, and developer advocates, may be added to platform teams.

## DevOps
“DevOps is a methodology in which teams own the entire process from application development to production operations.”<sup><a href="https://glossary.cncf.io/devops/">2</a></sup> While DevOps practices can be implemented by teams without developing a dedicated platform, it can be useful to view platform engineering as an approach to scaling DevOps principles through the delivery and management of a unified platform that serves the entire organization. This shared platform aims to streamline the development, deployment, and operational processes, providing a standardized and efficient environment for software delivery. Although DevOps and platform engineering converge on the objectives of optimizing software delivery and operational performance, platform engineering distinctively focuses on the development of a tangible product—the platform itself—to facilitate these goals.

## Platform users
The people who directly use capabilities of the platform, including but not limited to app developers, app operators, data scientists, commercial off-the-shelf (COTS) software operators, and information workers — whoever runs software on the platform, uses platform-provided capabilities, or requires insights into platform use.

## Portal
A web-based interface that provides centralized access to a variety of resources, tools, and services. It can serve as a jumping off point for a wide range of users in order to efficiently manage and interact with the underlying platform's capabilities. A portal exists to enhance user experience through a user-friendly interface that simplifies complex processes and promotes self-service capabilities. 

## Platform capabilities
The specific user outcomes, or **_what_** a platform provides. These should not be confused with platform qualities that describe **_how_** the capabilities perform. These capabilities can be at different levels of abstraction (e.g., a single database versus a test environment that includes a database) and provided by different capability providers. As platforms mature, they generally aspire to offer capabilities via self-service, starting with discoverability of available capabilities and including consistency of experience across capabilities. Capabilities themselves are often quite durable while the providers and implementation can evolve more rapidly. For example, it is unlikely an organization stops requiring test environments, but they may evolve to provide containerized solutions instead of VM based solutions.

## Platform capability provider
A group of people who develop and maintain a capability offered by the platform. Providers can be external organizations or internal teams and in smaller organizations can often be the same individuals who also develop the wider platform. As platforms mature, they benefit from maintaining abstractions for providers to discourage lock-in and to continue driving towards their Thinnest Viable Platform.

## Platform qualities
Refers to **_how_** the platform and its capabilities perform and what can be expected in terms of cross-functional requirements, non-functional requirements, or simply “-ilities.” Examples include the reliability or performance of managed services which might be measured with Service Level Objectives (SLOs), security which might be measured with time to mitigation of identified risks, or observability which can be used to both debug and report on platform use. Qualities are often confused with capabilities, as some concepts such as observability, which can be offered as a capability (e.g., OTel Operator provided to collect application telemetry) and a declared quality (e.g., platform metrics to measure and alert on the uptime of that provided OTel Operator).  

## Cognitive load
A quantification of the mental costs to a user before they can benefit from a platform capability. Within the umbrella term cognitive load there are actually three types of load: germane, intrinsic, and extraneous. Organizations are healthiest when platforms enable users to focus on the germane load (job-specific problem solving) challenges while simplifying the intrinsic (onboarding of new information or processes to complete their task) and minimizing the extraneous (distractions from the focused task, sometimes nicknamed “[yak shaving](https://en.wiktionary.org/wiki/yak_shaving#:~:text=yak%20shaving%20(uncountable),to%20solve%20a%20larger%20problem.)”) loads.

## Thinnest Viable Platform (TVP)
A concept initially defined in the book _Team Topologies_ by Matthew Skelton and Manuel Pais, which encourages organizations to strike a careful balance between a small yet effective platform. By doing so, they can accelerate and simplify software delivery for teams building on the platform while achieving their broader business goals. They encourage platforms to focus on the unique requirements of the business and to routinely integrate 3rd party capability providers which can reduce the complexity and operational cost of the platform. 
## Platform users
The target audience for a platform which includes but is not limited to app developers and operators, data scientists, COTS software operators, and information workers - whoever runs
software on the platform or uses platform provided capabilities.

## Thinnest Viable Platform (TVP) {#tvp}
A concept originally defined in the book *Team Topologies*
by Matthew Skelton and Manuel Pais. The definition says: "A TVP is a careful balance between 
keeping the platform small and ensuring that the platform is helping to accelerate and simplify 
software delivery for teams building on the platform."
