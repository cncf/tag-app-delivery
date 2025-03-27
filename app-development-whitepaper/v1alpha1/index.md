# CNCF Application Developer Experience White Paper

## Introduction to Cloud Native Application Development

When we refer to an Application Developer in the cloud native space, we're not talking about a single job title but a broad persona that includes software engineers, developers, and application architects who are directly involved in designing, building, and delivering software products.

In the context of cloud native development, application developers are responsible for far more than just writing code. They play a central role in shaping the functionality, scalability, and reliability of applications built on modern, distributed architectures.

Cloud native developers must balance development agility with operational accountability, making them key stakeholders in the inner loop (development and iteration) and the outer loop (integration, delivery, and operations).

In this evolving ecosystem, developers' interactions with tools, infrastructure, and processes directly impact their productivity, efficiency, and satisfaction. That brings us to the concept of Developer Experience (DevX).

When discussing Developer Experience (sometimes abbreviated as DevEx), it's essential to acknowledge that the term means different things to different people. While some define developer experience narrowly—focusing on the interface between developers and an application platform—we take a broader view: developer experience encompasses every touchpoint in the cloud native software lifecycle that involves application developers, from code to production deployment and observability.

Enhancing developer experience isn't just about selecting better tools—it's about creating smoother, more empowering workflows throughout the entire development lifecycle. That brings us to the heart of cloud native development.

The cloud native ecosystem rapidly evolves, introducing new capabilities to enhance developer productivity. While a robust set of tools—from application definition development to observability, analysis, orchestration, and management—forms the foundation of cloud native development, tools alone do not guarantee success.

Effective cloud native development requires deep experience and understanding of the ecosystem's complexities. From designing scalable architectures to managing deployments and ensuring security, every phase presents unique challenges that cannot simply be solved by adopting the latest technologies.

The challenges developers face in the cloud native space vary depending on the maturity of their teams and organizations. The journey from monoliths to microservices presents different hurdles depending on team maturity. Early adopters grapple with the fundamental transition, whereas mature teams prioritize compliance and cost optimization. Developers face constant adaptation in the fast-paced cloud native landscape, requiring them to master new tools and keep pace with evolving reliability, scalability, and operational efficiency standards.

Developers spend most of their time within the iterative inner development loop, which includes writing, building, debugging, and testing code. At this stage, the priorities are fast feedback and minimal disruption. Practices that reduce friction in Kubernetes native workflows, enable local testing of services, and abstract away unnecessary infrastructure complexity, are key to keeping developers in flow. This loop is all about experimentation and learning quickly—validating ideas before they move further down the delivery pipeline.

The outer loop comes into play once changes are ready to be integrated, tested at scale, and deployed. It introduces broader responsibilities—security, compliance, quality gates, versioning, and deployment orchestration. This phase isn't the responsibility of one team; it requires close collaboration between platform engineers and application teams. Together, they establish automated pipelines that enforce governance, manage artifacts, and ensure consistent delivery into production environments. Real-time feedback from observability practices allows teams to proactively monitor and manage application behavior and performance across the system.

While the inner-outer loop structure enables rapid innovation and safe delivery, it also surfaces new complexities—especially in cloud native environments. Each stage brings its own set of obstacles. We'll explore tools that offer partial solutions, but effective cloud native development relies on a combination of tools, streamlined processes, and a strong development culture.

## Challenges for Cloud Native App Development

Developers are often overwhelmed by the number of tools they need to add new features, fix bugs, or redesign their applications for new business demands. The cloud native ecosystem, with the rise of containers and later Kubernetes, has shifted some of the responsibilities once owned by operation teams. 

The following is a non-exhaustive list of challenges that development teams face when performing their tasks based on the Software Development Lifecycle:

### Planning and Development Phase

* **Inconsistent environments impacting developer experience**. The "Works on My Machine" Problem is often caused by inconsistent development environments set up across teams and difficulties in mirroring production environments locally. Different developers have different versions of tools, libraries, and runtime environments, leading to inconsistencies.

* **High cognitive overload with containers and Kubernetes**. Development teams must have clear guidelines for building and running containers for their development tasks. The lack of such guidelines and best practices could lead to downstream issues when application configurations change. When Containerfiles and Kubernetes manifests are tightly coupled with application source code, developers must understand the impact of the application changes on containers and their deployments. That causes operational expectations from a developer and leads to developer burnout and hiring shortages due to high-skill requirements. The adoption of Kubernetes for production deployments often requires application developers to run Kubernetes in their local environments and base the inner loop on containers. However, in many cases, more efficient options would be available without requiring the additional cognitive load and slow feedback cycles due to the containerization and deployment process.

* **Fragmented tooling for local development**. Pushing development teams to use poorly integrated tools that disrupt their inner loop workflows adds to cognitive overload. When developers have to work with unfamiliar tools (e.g., kubectl command), which are designed for operational tasks rather than development, it creates friction, slows down software delivery, and increases the effort required to implement changes. This misalignment hampers the developer experience and expands the scope of tasks beyond core application development, impacting time to market.

### Testing and Validation Phase

* **Slow outer loop feedback**. Application developers validate changes through unit and integration tests to ensure upstream and downstream services remain unaffected. However, discrepancies between development, staging, and production environments often lead to undetected issues during testing. When service dependencies in test environments differ from production, failures may only surface under real user traffic, delaying issue detection and increasing the risk of production incidents.

* **When and where to run tests**. Even with realistic dummy data to simulate production traffic, deciding when and where to run tests remains challenging. Different tests, such as unit, integration, end-to-end, and load tests, have varying computational requirements and impact the feedback loop. Running compute-intensive tests too frequently can slow down workflows, while infrequent execution risks missing critical issues. Balancing test execution efficiency with timely feedback is essential to maintaining development velocity without overloading systems.

* **Lack of mechanisms to experiment**. If we live in a world of slow feedback loops and complex infrastructure, there is no doubt that the software delivery cadence will suffer. Providing development teams with mechanisms to experiment can reduce the pressure and pushback that teams suffer due to the need to wait for complex tests that can take days to pass. Implementing mechanisms enabling teams to perform different release strategies, feature flags, and continuous profiling practices would reduce the time spent in tests in fake environments while promoting the idea of "testing in production".

### Deployment & Release Phase

* **Lack of unified access to resources or knowledge across providers**. Developers have the potential to understand complex application architectures and their requirements, such as third-party services, databases, message brokers, secret stores, etc. Knowledge sharing is the key to reducing the friction between operations and application development teams with complex infrastructure requirements. The challenge here is missing standard practice or a mechanism to share complicated requirements for the application development teams with the operation teams in charge of provisioning environments. Concepts like service identity help build a common set of mechanisms that teams can trust when accessing resources across providers.

* **Lack of end-to-end observability**. When things go wrong, platform teams should give developers access to a detailed report about what went wrong. Fixing issues that cannot be reproduced in development environments has always been a complicated process that goes back and forth between application teams and operations.

By understanding these challenges, their root causes, and the scope of the problems in the developer phase, platform engineering teams can help facilitate solutions, measure how specific platform engineering initiatives directly affect development teams, and craft developer experiences that help teams release software more efficiently.

## Developer Tools for Cloud Native Application Development

When looking into tools available for cloud native app development, one place to check out could be the CNCF landscape, where all CNCF projects are lined up and divided into categories such as Database, Observability, etc. A first look at the [CNCF Landscape](https://landscape.cncf.io) can seem daunting. The overwhelming number of possibilities can make it hard to know where to start. Even though you can quickly get a one-liner describing the projects, this rarely helps identify exactly what pain point the project can solve, and sometimes, it's even difficult to understand what it is about.

Knowing what projects in the landscape are relevant to an application developer requires knowledge of almost all projects, which is not feasible. The different categories are obviously a tremendous help. Still, let's consider the Observability category as an example: it's not immediately visible whether a tool is relevant to application developers or more targeted towards platform engineers.

### Application Development Tooling Landscape

In an attempt to improve the visibility of tools relevant to cloud native app developers, we are creating the [App Development Map](https://github.com/cncf/tag-app-delivery/blob/main/app-development-map/v1alpha2/index.md), a curated list of CNCF projects that add direct value to application developers' day-to-day tasks and enable them to deliver applications that follow cloud native best practices.

In the first iteration, only graduated and incubating CNCF projects were considered, as we wanted to start with a limited scope. Furthermore, we focused our initial effort on 10 projects relevant to inner loop development to get the format right before broadening the scope to more projects.

The projects chosen for the first iteration of the App Development Map were CloudEvents, NATS, OpenFeature, OpenTelemetry, gRPC, Buildpacks, Knative Functions, Dapr, Backstage, and Jaeger. As we decided only to include projects relevant to the inner loop of the Software Development Lifecycle (SDLC) as a start, all of the above projects can be utilized when coding, building, and running the application. Some will also be relevant during planning, while others remain relevant in the outer loop.

### Strategically Using Relevant Tools

Even after determining that a project could be beneficial, several steps must still be taken before it can be adopted. Application developers often do not have the bandwidth to spend much time on tooling experimentation, so the potential benefit must be clear very quickly.

Sometimes, a project might be super relevant. Still, the implementation would be expected by a platform team rather than a random application developer who saw the potential benefit. Thus, it creates a hard dependency on what is being delivered by other teams that are not necessarily within the app developer's circle of influence.

There's also the potential skill gap in tool adoption, where the skills needed for application development are significantly different from the skills needed to set up the tool that helps with application development. One example of this is backstage, which requires knowledge of yarn and npm, which might be a completely unknown tech stack to the app developer.

### Application Development Survey

We launched the Application Development Working Group Developer Survey to gain insight into the experience of developers working within the CNCF landscape. We wanted to know a few things and have quantifiable metrics behind our findings:

* Better understand the population of app developers engaged in CNCF events or communication.
* Learning about usage and awareness of tools will help us understand the centers of gravity in the app developer community.
* See how we could help the CNCF project improve the developer experience by filling gaps in the developer experience.

### Statistical Relevance

The respondent turnout was unexpectedly low. Between KubeCon Salt Lake City and KubeCon Hyderabad, only 84 participants completed the survey—far fewer than anticipated.

While there could be many possible reasons for this, pinpointing a definitive cause is challenging. Ultimately, this survey reflects the perspectives of a limited subset of developers rather than the broader cloud-native developer community.

While this dataset may not be statistically significant, clear trends emerge among respondents regarding their experiences with the CNCF landscape. Despite the small sample size, these findings provide the most quantifiable insights available into the developer experience and serve as valuable feedback for specific projects. Dismissing them would overlook important perspectives.

### Outcomes

#### Lack of Awareness

The first and most striking conclusion that we could draw from the survey results is a significant lack of awareness among developers about tools that could directly benefit their experience. For example:

* 39% of respondents had not heard of Backstage. 32% had heard of it but had never used it.
* 81% of respondents had either never heard of Dapr or had heard of it but had not used it.
* Nearly 60% of respondents had never heard of NATS.

#### Unclear Benefits to Application Developers

Two projects stood out as exceptions to the overall trend of lack of awareness and had significant adoption among respondents:

* gRPC had roughly 30% of respondents say they actively use it in development tasks. 
* Nearly 49% of respondents said they actively use OpenTelemetry.

For both of these projects, there is a clear benefit and code-level implementation for developers. Other projects that aren't directly implemented in code may have a more challenging time demonstrating to developers how to improve the experience, as the benefits may not be as easy to communicate.

#### Adoption Challenges

Most respondents (53%) rely on the project's tutorials and getting-started guides when adopting new tools. Additionally, 24% explored sample code on the project's GitHub or homepage, while 14% turned to YouTube tutorials for guidance. However, 53% of respondents cited the significant barrier to adoption as not having enough samples or unrealistic samples indicating how projects should be used in the real world. 

It's unclear which of these information mediums would be best tasked with building for specific use cases; however, it's worth noting that over a quarter of respondents, 27%, cited insufficient documentation as the highest barrier to entry for them. When considering these two factors combined, 80% of respondents can't integrate developer-centric tooling in the CNCF landscape into their production application code due to a lack of clear information about leveraging these tools for production scale.

#### Tooling

The last two questions in the survey asked respondents to list the tools they would consider developer-focused that aren't on the list above. The first of the two asked specifically for CNCF projects. Among the answers given, ArgoCD was listed five times, and Istio and Kubernetes were listed three times each. That does point to a common development practice in which application developers are directly using tools that live in the outer loop and are often considered part of the platform engineer's domain. 

Indeed, when we look at the results for the second of the two questions, which asked respondents to list the top three developer-focused open-source tools that come to mind, it's clear that developers may be crossing into the build and deployment steps of the SDLC. While various IDEs were listed a combined seven times, Docker and Git were listed four each, followed by ArgoCD and Maven with three each. If we combine Docker's four with Podman's two, respondents cited containerization six times, indicating a strong affinity for packaging and running applications. What's unclear is whether or not this is meant to reflect the inner loop development cycle or as part of the build process in pushing for deployment.

### Challenges during the inner loop and relevant tooling

All challenges for cloud native app development will not be solvable via tooling, but some projects address common pain points. For some of the challenges, the right tool will be able to mitigate the problems faced by application developers.

#### Inconsistent environments impacting developer experience

For trouble around inconsistent environments, a current shift towards some form of development containers will immediately attack the "works on my machine" by unifying the development environment across developers. It helps align slightly with how things are run in production, bringing the development environment closer to the end goal.

#### High Cognitive Overload with Containers and Kubernetes

When too many things have to be considered, all relevant guidelines for developers must be readily available. While this is very much related to team structure and documentation culture, the right tools can simplify it by holding all the information needed for developers to succeed.

#### Fragmented Tooling for Local Development

It's crucial to consider who needs access to what, but this is likely more of an organizational and implementation-specific challenge than one that tooling alone can resolve.

## Conclusion

Last year, Kubernetes celebrated its 10th birthday. However, application developers still face many challenges that cause poor developer experience, high cognitive load, and friction in the development workflow.

Tools can help design better developer experiences and support development teams in their daily work. In this paper, we aim to provide an initial analysis of the main challenges developers face and some options for tools and solutions based on CNCF Graduated and Incubating projects.

It's worth noting that not all challenges can be solved by technology. Adopting the right practices and organizational structure is also paramount to fully address these challenges, a topic we want to cover in a future paper.

The cloud native ecosystem is highly dynamic and constantly changing. In this paper, we focused on a selected list of tools we have previously analyzed in the [App Development Map](https://github.com/cncf/tag-app-delivery/blob/main/app-development-map/v1alpha2/index.md). Further work will be done to cover more tools and practices, building on the foundations established in this paper.

We always welcome contributions. Feel free to join our App Development Working Group to help us bring application developers closer to CNCF and make them more effective when working with cloud native applications.

## Appendix: Authors

- Alexandra Aldershaab
- Colin Lacy
- Daniel Oh
- Mauricio Salatino
- Mona Borham
- Sonali Srivastava
- Thomas Vitale

## Appendix: Contributors

Thank you to the members of CNCF WG App Development who have contributed feedback and insights on this paper, in particular the following:

- Graziano Casto
- Yacine Kheddache
