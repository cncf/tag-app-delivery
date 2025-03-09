# App Development Map

## Introduction

The [CNCF landscape](https://landscape.cncf.io/) offers a huge amount of projects and tools that support users in tackling their daily tasks in the cloud native ecosystem. Although the landscape offers several options to filter the landscape and tailor the overview, users are still overwhelmed and easily get lost. This is especially true for cloud native application developers looking for projects that support them in their cloud native development journey. 

In this document the working group members aim to improve the situation cloud native application developers are facing. The document delivers a curated list of CNCF projects that add direct value to application developers in their day to day tasks and enable them to deliver applications that follow cloud native best practices.

In this first iteration, only [Graduated and Incubating CNCF projects]((https://landscape.cncf.io/?group=projects-and-products&view-mode=grid&project=graduated&project=incubating)) are considered as a starting point. Once this list is settled we will consider extending the scope of this analysis especially based on feedback from the community.

## Development Activities

To effectively bridge the gap between the tools, projects, specifications, and protocols developers utilize, we need a deep understanding of their workflow. This includes the types of activities they perform, the context surrounding those activities (inputs and expected outputs), and the frequency of each activity.

The following is a high-level list of phases that we can find in most development practices.

### Architecture, Planning, and Collaboration

* Before producing or changing source code developers must design and plan for their changes. To perform these tasks they use tools to create designs and architectural diagrams, as well as tools to organize work such as team collaboration tools and issue trackers.

### Coding

* Developers produce source code that is frequently stored in a version control system such as one or more Git repositories. They perform coding tasks using a text editor or a more advanced Integrated Development Environment (IDE) tool. 
* In this phase developers are interested in creating features, fixing existing bugs in the codebase, and running the application to validate its behavior.

### Automated Testing

* Writing tests can be considered part of the coding phase, but some tests require some extra configuration activities to set up the right context (infrastructure and data) to run tests. Currently, no testing projects have graduated or are incubating.
* Developers can write different kinds of tests such as contract tests, end-to-end tests, integration tests, and performance tests. A good overview about the different types of tests is described in the article “The Practical Test Pyramid“ on martinfowler.com.

### Debugging & Troubleshooting

* When things go wrong or when developers want to inspect how an application is working tools like debuggers and observability tools can be used to execute an application step-by-step in a controlled environment. Observability tools can provide telemetry (logs, traces, and metrics) to understand how our applications are running in a given environment.
* These tasks can be triggered by bug/issues reports causing developers to investigate issues that haven’t been identified when coding and testing the application

### Building and Running the Application

* For local testing and validation purposes, developers prefer to build the application locally.
* Notice that developers can be involved in packaging and distributing their applications.

## Projects Classification Criteria

This section outlines a framework for classifying tools relevant to cloud-native development. This framework will help us effectively describe tools and their impact on the daily workflow of cloud-native developers and architects.

* What challenges make developers adopt/use this project?
* How is the project best described? 
  * Tool 
  * Project
    * Library
    * SDK
    * Framework
  * Protocol
  * Specification
* In which development activity is this tool used?
  * Architecture, Planning, and Collaboration
  * Coding
  * Automated Testing
  * Debugging & Troubleshooting
  * Building and Running the Application
* How often does a developer use this tool? 
  * As part of their workflow - Fundamental
  * Every day - bootstrap once a day
  * Once a week - team coordination tasks, running time-consuming jobs/tests
  * Once a month or less - before or after a release, only when a new milestone is hit, during certain or specific unexpected events
* How does this tool help/improve developer productivity?
  * Explain the context in which the tool is used
* Which cloud-native principles and good practices does this project promote?
* When and why did a developer learn about this tool/project/spec?
  * Explain
* Does this tool help other teams/roles to collaborate with developers?
  * Yes
    * If yes, how?
  * No

## Projects

### CloudEvents

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Graduated |
| Website                         | [cloudevents.io](http://cloudevents.io) |
| What challenges make developers adopt/use this project? | Each event system typically has its own unique message format, making interoperability and integration between services complex and time-consuming. CloudEvents addresses this by providing a standardized, unified format for event data, Developers can use to simplify communication accross services. |
| How is the project best described? | Specification |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding |
| How often does a developer use this tool? | As part of their workflow - Fundamental |
| How does this tool help/improve developer productivity? | CloudEvents helps developers have a standard way to exchange events no matter the message broker that they are using. By adopting CloudEvent, developers can produce and consume events from different applications written in different languages and exchanged over different transports (HTTP, AMQP, MQTT, etc). CloudEvents provides SDKs (software development kits) in several programming languages.<br><br> Developers want to emit or consume events coming from different applications. By using CloudEvents developers have clear guidelines on how to read and write metadata that other applications can use to understand how to decode the payload of the event. |
| Which cloud-native principles and good practices does this project promote? | A common, transport-agnostic, and lightweight envelope to exchange events information across systems written in different languages. |
| When and why did a developer learn about this tool/project/spec? | Developers will learn about CloudEvents if their applications exchange events with other internal or external services. They might also need to learn about CloudEvents if their applications are event-driven as several event-driven projects adopted CloudEvents. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. CloudEvents facilitate integrations across different tools and systems. This specification can also help documentation teams to describe how to integrate with the services that developers create by exchanging CloudEvents.

### NATS

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [nats.io](https://nats.io) |
| What challenges make developers adopt/use this project? | Developers can use NATS to exchange and store data securely, across a combination of clouds, environments, web, and (edge) devices.  |
| How is the project best described? | Project |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding |
| How often does a developer use this tool? | As part of their workflow - Fundamental |
| How does this tool help/improve developer productivity? | Provides a resilient and performance oriented mechanism to exchange data across applications.<br><br> Distributed applications, including edge applications, need to exchange data. Developers need to understand how to connect and exchange messages using SDKs provided for all major programming languages. |
| Which cloud-native principles and good practices does this project promote? | Distributed, resilient, and scalable messaging system. |
| When and why did a developer learn about this tool/project/spec? | Teams facing the challenge of secure data distribution and storage across multiple different end-locations and/or applications.  |
| Does this tool help other teams/roles to collaborate with developers? | Yes. NATS can help teams write applications using different programming languages to standardize how data is exchanged across systems. |

### OpenFeature

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [openfeature.dev](https://openfeature.dev) |
| What challenges make developers adopt/use this project? | FeatureFlagging is important in the modern age of software development and micro serivces. Typically, this can either be homegrown or code wise done through a vendor lock in. OpenFeature offers away to abstract is, to that Developers can still swap the backend behind.|
| How is the project best described? | Tool, SDK, Library |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding |
| How often does a developer use this tool? | As part of their workflow - Fundamental |
| How does this tool help/improve developer productivity? | OpenFeature enables developers to release software that supports enabling and disabling features by configuration. By using feature flags, developers can release new functionality that can be turned on and off when business stakeholders (including customers) are ready to consume that feature. <br><br> When creating a new feature for their application services, developers can wrap a feature behind a feature flag by using one of the OpenFeature SDKs. |
| Which cloud-native principles and good practices does this project promote? | The use of interfaces to abstract different feature flag providers. <br><br> Cross-language support: SDKs in most programming languages. |
| When and why did a developer learn about this tool/project/spec? | Teams interested in adopting feature flags for their development practices will look into feature flag providers. The advantage of using OpenFeature, as with any open interface is to keep application code agnostic from a specific vendor, allowing the application to be configured to run against a different provider if needed. This becomes useful, if we want to run the application in different environments, where providers might not be available. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. Feature flags allow product teams to decide when certain features are enabled without the need to redeploy the application. This enables faster iteration loops after the development of a feature is done. |

### OpenTelemetry

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [opentelemetry.io](https://opentelemetry.io) |
| What challenges make developers adopt/use this project? | Developers use OpenTelemetry to instrument their code to generate, collect, and export telemetry data (metrics, logs, and traces). |
| How is the project best described? | Specification, SDK, Library |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding |
| How often does a developer use this tool? | Once a month. By using the OpenTelemetry SDKs developers can externalize metrics, traces, and logs that can be used to troubleshoot issues when things go wrong. This is usually done once when teams decide to provide better observability for their services/applications. |
| How does this tool help/improve developer productivity? | OpenTelemetry enables observability of applications, increases visibility and helps developers troubleshoot and understand their applications |
| Which cloud-native principles and good practices does this project promote? | It assists teams with key tools to make complex systems more observable. |
| When and why did a developer learn about this tool/project/spec? | Teams building complex applications want to understand how these services interact with each other to understand their performance or to troubleshoot when things go wrong. Developers might need to learn to instrument their applications to produce logs, metrics, and traces using the OpenTelemetry SDKs provided for all major programming languages or a library supporting the OpenTelemetry specification. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. OpenTelemetry helps operation and platform teams share data with developers for troubleshooting scenarios, performance and improvement, and profiling tasks. |

### gRPC

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [grpc.io](https://grpc.io) |
| What challenges make developers adopt/use this project? | Developers often face challenges like inconsistent communication protocols, manual serialization/deserialization, and difficulty maintaining cross-language compatibility when using in a microservice environment.  |
| How is the project best described? | Project, SDK |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding |
| How often does a developer use this tool? | As part of their daily workflow - Fundamental. Using gRPC, developers can create efficient service-to-service communications by leveraging bidirectional communications using HTTP 2.0. |
| How does this tool help/improve developer productivity? | gRPC improves producitivty by offering a simple framework with automatic code generation and fast data serialization using Protocol Buffers. This helps across different languages, reduces repetitive code, improves performance, and simplifies integration, making development faster and easier.  |
| Which cloud-native principles and good practices does this project promote? | The use of common data structures, protocols, and architectural patterns to make our applications more observable, covering logs, traces, and metrics. |
| When and why did a developer learn about this tool/project/spec? | Teams building high-performing applications might need bidirectional communications across their services. For example, if sending HTTP 1.0 requests becomes a bottleneck, developers might look into using the gRPC SDKs provided for all major programming languages. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. Using gRPC helps teams connect services using a highly optimized protocol for RPC (Remote procedure calls) between services. Teams writing applications using different programming languages can connect applications reliably by sharing service interfaces to generate clients from a wide range of programming languages. |

### Buildpacks

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [buildpacks.io](https://buildpacks.io) |
| What challenges make developers adopt/use this project? | The major challenge is application developers across the organization individually maintain their own Dockerfiles. Buildpacks simplifies the build process by transforming application source code into container images that can run on any cloud. <br><br> Lot of effort and manual intervention to enforce security and compliance requirements, and perform upgrades. |
| How is the project best described? | Tool, Project |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Building and Running the Application. |
| How often does a developer use this tool? | As part of their daily workflow - Fundamental. |
| How does this tool help/improve developer productivity? | By automating and standardizing the build process. |
| Which cloud-native principles and good practices does this project promote? | Streamlines and automates the build process. <br> Supports containerization and reusability of build components. <br> Creation of standardized build environments. <br> Faster and more reliable builds since the need for developers to manually write Dockerfiles is reduced. |
| When and why did a developer learn about this tool/project/spec? | Developers learn about it when they need to simplify and standardize container builds, often early in the development lifecycle. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. This tool helps other teams (e.g., operations, and security) collaborate with developers by ensuring that container images meet organizational standards and are consistently built, facilitating smoother deployments and maintenance. |

### Knative Functions

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [knative.dev](https://knative.dev) |
| What challenges make developers adopt/use this project? | The developers aim to build an event-driven application that adheres to serverless paradigms. <br><br> The developers do not want to dive into the depths of Kubernetes and containers etc, they “just” want to deliver their business apps. |
| How is the project best described? | Tool, Project |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding; Building and Running the Application. |
| How often does a developer use this tool? | As a developer this will be part of their day-to-day usage. |
| How does this tool help/improve developer productivity? | The tool enables the developer to rely on a well-defined programing model to implement their business logic. <br><br> The configuration of a Knative Function has a reduced scope and is easier to understand compared to Kubernetes configurations needed to achieve the same outcome without using Knative. <br><br> The tooling (CLI) empowers the developer to do local testing. <br><br> The tooling (CLI) enables the developer to build OCI compliant images without needing to worry about Dockerfiles etc. |
| Which cloud-native principles and good practices does this project promote? | Serverless applications; Event-driven applications (adhering to CloudEvent specification). |
| When and why did a developer learn about this tool/project/spec? | During architecture and design phase. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. The tool separates the tasks of the developer from platform tasks. The interface between those two groups is given by the Knative architecture (serving/eventing) and consequently can enable good collaborations and a common language for exchange between the developer and the platform team. |

### Dapr

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Graduated |
| Website                         | [dapr.io](https://dapr.io) |
| What challenges make developers adopt/use this project? | Dapr tackles key developer challenges in distributed systems, such as unreliable service communication, fragmented state management, inconsistent observability, and the complexity of integrating diverse tools, enabling faster development and scalability with less boilerplate. |
| How is the project best described? | Tool, Project |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding. |
| How often does a developer use this tool? | Every day. |
| How does this tool help/improve developer productivity? | Developers become more productive by using Dapr’s abstractions (“building blocks”) for common distributed-systems tasks like storing state or responding to events and coding against SDKs. Dapr’s building blocks bake in best practices like instrumentation and resiliency so developers can spend more on application logic and less time on glue. |
| Which cloud-native principles and good practices does this project promote? | Dapr encourages the building of loosely coupled systems through its building blocks. Dapr also bakes in observability and resiliency policies that simplify the development of systems that use a microservices architecture. <br><br> Dapr improves security through built-in features like mTLS and by a novel sidecar architecture that keeps secrets out of application code. <br><br> Applications that leverage Dapr are more manageable due to the separation of concerns for the configuration of its component model. |
| When and why did a developer learn about this tool/project/spec? | Developers benefit the most by including Dapr in the Architecture phase of a project. Dapr can also be added to existing applications and developers can choose which features to adopt. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. Dapr’s component model provides a separation of concerns with the configuration of components used at runtime for state storage or messaging. Infrastructure operators can select the key technologies to use, and configure the underlying infrastructure with a separate lifecycle from the application. |

### Backstage

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Incubating |
| Website                         | [backstage.io](https://backstage.io) |
| What challenges make developers adopt/use this project? | Addresses common developer experience issues present in mid- and large-sized engineering orgs, including unclear service ownership, poor knowledge sharing and documentation, inconsistent software development practices, and other challenges that arise from the increasing complexity of modern tech infrastructure and widely distributed and/or fast-growing teams. |
| How is the project best described? | Project: Framework |
| In which development activity is this tool used? | Architecture, Planning, and Collaboration; Coding; Automated Testing; Debugging & Troubleshooting; Building and Running the Application. |
| How often does a developer use this tool? | When fully deployed as a centralized hub for an engineering org’s infrastructure and processes, an internal developer portal (IDP) built with Backstage becomes fundamental to every developer’s everyday workflows. <br><br> Developer teams access their Backstage IDP throughout the entire software development lifecycle, from managing the components they own to creating new components, monitoring builds and deployments, understanding dependencies, maintaining security and quality standards, and more. <br><br> Platform engineers also use it for managing infrastructure and tools, including by building plugins that extend the functionality of their Backstage IDP for development/application teams. |
| How does this tool help/improve developer productivity? | Backstage acts as a one-stop shop for developers, providing easy access to services, documentation, tools, and APIs. This eliminates time spent searching for resources across various platforms and repositories. <br><br> A well-organized catalog helps developers find the right tools and services for their projects more easily, reducing wasted time exploring irrelevant options. <br><br> By having all the necessary resources readily available, Backstage helps developers focus on coding and completing tasks more efficiently. |
| Which cloud-native principles and good practices does this project promote? | Backstage encourages standardization by providing templates and best practices for managing services and APIs. This promotes consistency and automates repetitive tasks, aligning with cloud-native principles of infrastructure as code. <br><br> Backstage provides a centralized view of services, dependencies, and resource usage. This transparency aligns with cloud-native principles of loose coupling and observability. <br><br> Backstage's open-source nature promotes collaboration and innovation, a core principle of cloud-native development. The active community constantly develops plugins and extensions that can further enhance cloud-native practices. |
| When and why did a developer learn about this tool/project/spec? | There's no single point in a developer's journey where they necessarily learn about Backstage. It depends on a few factors such as the Developer's Area of Work, Team Practices, and Developer's Initiative. Here are some scenarios where a developer might learn about Backstage: <br><br> * Starting a new role: If a developer joins an organization that uses Backstage, they'll likely be introduced to it during onboarding or team training to understand the development workflow. <br><br> * Working on a cloud-native project: Backstage is often used in conjunction with cloud-native development. As a developer delves into this area, they might encounter Backstage as a tool for managing microservices and infrastructure. <br><br> * Seeking ways to improve efficiency: A developer looking to streamline their workflow or improve access to resources might discover Backstage through online research or by attending conferences or workshops focused on developer experience tools. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. <br><br> Backstage acts as a central platform where developers, operations teams, product managers, and other stakeholders can access shared information and resources. This fosters transparency and reduces communication silos. <br><br> Backstage integrates with various tools used by different teams, such as ticketing systems or project management platforms. This allows for seamless information exchange and avoids the need to switch between multiple platforms. <br><br> Backstage empowers non-developers to find the information they need independently, reducing their reliance on developers for basic questions and troubleshooting. <br><br> Backstage promotes consistency in service management and documentation, making it easier for non-technical teams to understand and interact with the development process. |

### Jaeger

| Property                        | Description                   |
| ------------------------------- | ----------------------------- |
| Status                          | CNCF Graduated |
| Website                         | [jaegertracing.io](https://www.jaegertracing.io) |
| What challenges make developers adopt/use this project? | When a microservices-based system handles multitude of requests, it is difficult to debug and measure each individual distributed request, other traditional monitoring tools mostly provide single-node visibility into aggregate behavior or log analysis of unstructured data. |
| How is the project best described? | Jaeger, a distributed tracing platform provides tooling and a user interface to analyze traces and measure application performance. It is compatible with OpenTelemetry traces and Prometheus metrics. |
| In which development activity is this tool used? | Debugging & Troubleshooting; Monitoring; Automated Testing; Building and Running applications. |
| How often does a developer use this tool? | As part of their daily workflow to optimize performance and usability of application. The tool is especially valuable in isolating the resolving root cause during incidents. |
| How does this tool help/improve developer productivity? | Jaegar makes performance monitoring and root cause analysis possible by providing a centralized platform for troubleshooting, monitoring and optimizing applications, especially complex microservices architectures. <br><br> With Jaeger tracing, developers can store and visualize the flow of requests and related metadata within in the distributed system helping them debug issues easily and optimize the system performance. <br><br> In the Jaeger user interface, developers can search and filter spans based on service, operations, attributes, timeframe, duration making it easier for them to find and analyze the relevant traces. |
| Which cloud-native principles and good practices does this project promote? | Supports microservice architectures; Makes distributed systems more observable; Integrates with workflows and automation tools. |
| When and why did a developer learn about this tool/project/spec? | While working with microservices, developers need a reliable way of analysing the systems and understanding microservices interaction. Jaeger helps store and visualize the request flow and optimize the service performance, it also provides a topological view of the overall application. <br><br> When applications scale or architecture becomes complex, Jaeger is a tool for the developer to identify the path the requests take across services and components to identify and solve performance bottlenecks improving latency which in turn creates a better user experience. |
| Does this tool help other teams/roles to collaborate with developers? | Yes. <br><br> Jaeger provides a unified view of system performance which can be shared across development, DevOps, SRE, testing and operations team. When issues occur, they can perform identifcation, debugging and troubleshooting to resolve the issues. <br><br> Security teams can identify vulnerabilities and breaches by viewing the data within the traces to identify requests which caused issues which can identify attacks and allow for forensics of the attack patterns. The security team can collaborate with development and operations team to implement security policies. |

## Glossary

| **Term**                           | **Definition**                                            |
| ---------------------------------- | --------------------------------------------------------- |
| Cloud Native Application Developer | The goal of the application developer is to create applications that fulfill business requirements (functional requirements) and solve business problems. Developing a cloud native application means that the application is built  in a cloud-native way leveraging cloud-qualities like scalability, resilience and flexibility as central cross-functional requirements of the app. |
| Inner Development Loop             | The inner development loop is an iterative process performed by a single developer when locally writing, building and debugging code. The process ends once the developer checks the source code into a source code repository e.g., via a pull request. This event starts the outer-development loop.                                                                                  |
| Outer Development Loop             | The outer development loop is started once the code provided by the developer is checked into a source code repository e.g. via a PR. This starts automated processes like CI/CD pipelines that e.g. build your code, execute integration tests, execute compliance checks and finally brings the artifacts to a shared environment like a cluster.                                     |
| Preview Environment                | Preview environments are cloud environments that enable an isolated (ephemeral) setup to test code changes. They are usually short-lived and have a defined life cycle. The life cycle starts with the code change trigger, usually a pull request, and ends with the code change's merge.                                                                                              |
