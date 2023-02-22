## Introduction

Inspired by the cross-functional cooperation promised by DevOps, platform 
engineering has begun to emerge in enterprises as an explicit form of that 
cooperation. Platforms curate and present foundational capabilities, frameworks 
and experiences to facilitate and accelerate the work of internal customers such 
as application developers, data scientists and information workers. Particularly 
in the field of cloud computing, platforms have helped enterprises realize 
values long promised by cloud like fast product releases, portability across 
infrastructures, more secure and resilient products, and greater developer 
productivity.

This paper intends to support enterprise leaders, enterprise architects and 
platform team leaders to advocate for, investigate and plan internal platforms 
for cloud computing.  We believe platforms significantly impact enterprises' 
actual value streams, but only indirectly, so leadership consensus and support 
is vital to the long-term sustainability and success of platform teams. In this 
paper we'll enable that support by discussing what the value of platforms is, how 
to measure it, and how to implement platform teams that maximize it.

## Table of Contents

1. Why platforms?
1. What is a platform
1. Attributes of successful platforms
1. Attributes of successful platform teams
1. Challenges when implementing platforms
1. How to measure the success of platforms
1. Capabilities of platforms

## Why platforms?

Platforms and platform engineering are a popular topic in today's cloud computing world. 
Before diving into definitions, techniques, and measurements for platform building, it 
is important to first explore the value platforms provide that's driving this 
well-deserved attention.

Process improvements over the past 2-3 decades have significantly increased the 
agility of software application and product teams, offering them flexible services 
for both infrastructure like compute, network and storage as well as developer 
services like builds, tests, delivery and observability. This autonomy and process 
improvement has also had the effect of gradually shifting more and more responsibility 
for supporting services to product teams, forcing them to spend more and more time 
and cognitive energy on infrastructure concerns and reducing their time to produce 
value relevant to their organization.

The desire to refocus delivery teams on their core focus and reduce duplication of
effort across the organisation has motivated enterprises to implement and platforms for 
cloud-native computing. By investing in platforms, enterprises can:

1. Reduce the cognitive load on product teams and thereby accelerate product 
   development and delivery
1. Improve reliability and resiliency of products relying on platform 
   capabilities by dedicating experts to configure and manage them
1. Accelerate product development and delivery by reusing and sharing platform 
   tools and knowledge across many teams in an enterprise
1. Reduce risk of security, regulatory and functional issues in products and 
   services by governing platform capabilities and the users, tools and processes 
   surrounding them
1. Enable cost-effective and productive use of services from public clouds 
   and other managed offerings by enabling delegation of implementations to those 
   providers while maintaining control over user experience

These benefits accrue in part because just a few platform teams serve many 
product teams, multiplying their impact; in part because platform teams 
consolidate management of common functionality, facilitating governance; and in 
part because platform teams emphasize user interfaces and experiences above all 
else.

A team of platform experts not only reduces common work \[1\] demanded of 
product teams but also optimizes platform capabilities \[2\] used in those 
products. A platform team also maintains a set of conventional patterns, 
knowledge and tools used broadly across the enterprise \[3\]; enabling 
developers to quickly contribute to other teams and products built on the same 
foundations. The shared platform patterns also allow embedding governance and 
controls \[4\] in templates, patterns and capabilities. Finally, because 
platform teams corral providers and provide consistent experiences over their 
offerings, they enable efficient use of public clouds and service providers 
\[5\] for foundational but undifferentiated capabilities such as databases, 
identity access, infrastructure operations, and app lifecycle.

## What is a platform

A platform is a layer that provides common supporting capabilities and services 
for many applications and use cases. Such a platform provides consistent user 
experiences for getting, using and managing its capabilities and services, 
including Web portals and pages, scenario-specific code templates, automatable 
APIs and command-line tools.

According to Atlassian [[1]], "platform teams create capabilities that can be 
used by numerous stream-aligned teams with little overhead.... platform teams 
minimize resources and cognitive load of the stream-aligned team... platform 
teams can create a cohesive experience that spans across different user 
experiences or products."

According to Martin Fowler and Evan Bottcher [[2]], "a digital platform is a 
foundation of self-service APIs, tools, services, knowledge and support which 
are arranged as a compelling internal product. Autonomous delivery teams can 
make use of the platform to deliver product features at a higher pace, with 
reduced coordination."

Platforms are particularly relevant for cloud-native computing, which typically 
separates supporting capabilities from application-specific logic more than 
previous paradigms. In such environments resources like databases and object 
stores, message queues and brokers, observability collectors and dashboards, 
user directories and authentication systems, task runners and reconcilers and 
more are managed independently and integrated into applications running in 
containers and machines. A platform for cloud-native computing provides these to 
many teams in ways that make them easy to integrate in applications and systems.

At its most basic, a platform provides consistent experiences to application 
developers for acquiring and using individual services such as a database system 
or a secret store. Example use cases an enterprise can meet with a basic platform 
include the following:

1. Developers of products and services can automatically provision runtime 
   capabilities such as compute, storage, databases and service identity and 
   immediately integrate and use those as part of their products
1. Developers of products and services can automatically provision supporting 
   services such as task runners, package registries, deployment orchestrators and 
   observability systems to build, verify, operate and observe their products
1. Operators of third-party products and services can automatically provision 
   spaces and supporting services to deploy and use those third-party products and 
   services

A more advanced platform also _composes_ these capabilities into experiences and 
templates fit for key scenarios like web application development or data analysis. 
For example, an application developer platform can include templates for provisioning 
complete development environments and could serve the following use cases:

1. Developers of products or services can automatically request a complete 
   development environment to support iterative research and development of new 
   features. This includes spaces in relevant services such as task runners and 
   artifact storage, membership in designated teams, and publication of connection 
   info such as URLs and secrets.
1. Developers of products or services can use scenario-specific code and 
   configuration templates to rapidly bootstrap, develop and deliver new products 
   and features
1. Stakeholders in a product or service can observe system and user behavior in 
   those products and services via instrumentation, dashboards and alerts

A platform is bespoke to an organisation, supporting a unique set of users and 
business needs. While application developement and delivery is often the first 
capability a platform supports, it is important to focus on the individual needs of 
the organization which often surfaces additional opportunities to optimise through 
a platform offering. Some examples can include data operations, user management, and 
incident management.

By offering consistent experiences for individual and/or scenario-oriented sets 
of capabilities, platforms make it easy for their users to deliver valuable products.

[1]: https://www.atlassian.com/devops/frameworks/team-topologies
[2]: https://martinfowler.com/articles/talk-about-platforms.html

## Attributes of platforms

After defining what a platform is and why an organization might want to build one,
let's identify some key attributes that affect the success of a platform.

1. **Platform as a product**. A platform exists to serve the requirements of its users
   and it should be designed and evolved based on those requirements, similar to any
   other software products. Platforms should provide the necessary capabilities to
   support the most common use cases across product teams, and prioritize those
   over more specific capabilities that are only used by a single team to maximize
   the value delivered.
1. **User experience**. A platform should offer its capabilities through consistent
   interfaces and focus on the user experience. Platforms should endeavor to meet their
   users where they are, which may mean a combination of GUIs, APIs, command-line tools,
   IDEs, and portals. For example, a platform typically offers the capability of deploying
   an application. Developers might consume such a capability via the IDE, testers might
   use a command-line tool, whereas a product owner might use a GUI-based web portal.
1. **Documentation and onboarding**. Documentation is a key aspect of a successful software
   product. To be able to use a platform's offerings, users require documentation and
   examples. A platform should be delivered with proper documentation addressing the
   needs of its users. It should also provide tools to accelerate the onboarding of new projects
   that can help users consume the necessary platform services in a quick and simple way.
   For example, the platform could offer a reusable supply chain workflow for building, scanning,
   testing, deploying, and observing a web application on Kubernetes. Such a workflow could be
   offered with an initial project template and documentation, a bundle often described
   as a _golden path_.
1. **Self-service**. A platform should be self-serviceable. Users must be able to request and
   receive capabilities autonomously and automatically. This property is key to allowing a platform
   team to enable multiple product teams and scale as needed. The platform capabilities should be
   available on demand and with minimal manual intervention via the interfaces described above.
   For example, it should be possible for a user to request a database and receive its locator
   and credentials by running a command-line tool or filling out a form on a web portal.
1. **Reduced cognitive load for users**. An essential goal of a platform is to reduce the cognitive
   load on product teams. A platform should encapsulate implementation details and hide
   any complexity that might arise from its architecture. For example, a platform might delegate
   certain services to a cloud provider, but users should not be exposed to such details.
   At the same time, the platform should allow users to configure and observe certain services
   as needed. Users must not be responsible for operating the services offered by the platform.
   For example, users may often require a database, but they shouldn't have to manage the database
   server.
1. **Optional and composable**. Platforms are intended to make product development more efficient, so they
   must not be an impediment. A platform should be composable and enable product teams to use only
   parts of its offerings. It should also enable product teams to provide and manage their own
   capabilities outside of the platform's offerings when necessary. For example, if a platform doesn't
   provide a graph database and it's required for a product, it should be possible for the product
   team to provision and operate a graph database themselves.
1. **Secure by default**. A platform should be secure by default and offer capabilities
   to ensure compliance and validation based on rules and standards defined by the organization.

## Attributes of platform teams

Platform teams are responsible for the interfaces to and experiences with
platform capabilities - like Web portals, custom APIs, and golden path
templates. On one hand, platform teams work with those teams implementing
infrastructure and supporting services to define consistent experiences; on
the other, they work with product and user teams to gather feedback and ensure
those experiences meet requirements.

Following are jobs a platform team should be responsible for:

1. Research platform user requirements
1. Manage and develop interfaces for capabilities and services - portals, APIs,
   docs and templates, CLIs
1. Market, evangelize and advocate for platform usage

Most importantly, platform teams must learn about the requirements of platform
users \[1\] to inform and continuously improve capabilities and interfaces offered
by their platform. Ways to learn about user requirements include user
interviews, interactive hackathons, issue trackers and surveys, and direct
observation of usage through observability tools. For example, a platform team
could publish a form for users to submit feature requests; and conduct periodic
roadmap meetings to share upcoming features and gather feedback.

A platform team doesn't necessarily run compute, network, storage or other
services. Rather they own the interfaces \[2\] (GUI, CLI, API) and user
experiences with those services. For example, a Web portal page might describe
and even offer a button to provision an identity for an app; while the
implementation of that capability might be via a cloud-hosted identity service.
A platform team owns the web page and user-facing API, but not necessarily the
implementation.

Earlier it was stated that a platform should be treated as a product.
Specifically, the platform should be continuously improved based on user
requirements and optional to use (see: platform attributes #1 and #8). While
research and design is one side of product delivery, the other side is marketing
and advocacy \[3\]. If the platform is truly being built to user requirements,
people should be excited to use the provided capabilities. Some ways a platform
team can help adoptions is through internal marketing activities including
delivering department wide announcements, sharing engaging demos, and welcoming
questions during regular office hours. The key here is to meet users where they
are, and bring them on the journey to engage with and benefit from the platform.

## Challenges with platforms

While platforms promise lots of value, they also bring challenges like the
following which implementers should keep in mind.

1. Platform teams must treat their platforms like products and develop them
   together with users
1. Platform teams must carefully choose their priorities and initial partner
   application teams
1. Platform teams must seek support of enterprise leadership and show impact on
   value streams

Perhaps most important is to treat the platform as a customer-facing product and
recognize that its success is directly dependent on the success of its users and
products; and as such it's vital that platform teams partner with app teams and
other users to prioritize, plan, implement and iterate on the platform's
capabilities and user experiences. Platform teams that release features and
experiences without feedback or that rely on top-down mandates to achieve adoption
are almost certain to find resistance and resentment from their users and miss a
lot of the promised value. To counter this, platform teams should include product
managers from the start to share roadmaps, gather feedback and generally understand
and represent the needs of platform users.

When adopting platforms, choosing the right capabilities and experiences to
enable first, can be crucial. Capabilities that are frequently required and
undifferentiated, like pipelines, databases and observability, may be a good
place to start. Platform teams may also choose to focus first on a limited number
of engaged and skillful app teams. Detailed feedback from such teams improves the
first platform experiences; and people from those teams help champion and
evangelize the platform to later adopters.

Finally, it's vital in large enterprises to quickly gain leadership support for
platform teams. Many enterprise leaders perceive IT infrastructure as an expense
quite disconnected from their primary value streams and may try to constrain
costs and resources allocated to IT platforms, leading to a poor implementation,
unrealized promises and frustration. To mitigate this, platform teams need to
demonstrate their direct impact on and relationships with product and value
stream teams (see the previous two paragraphs), presenting the platform team as
a strategic partner of product teams in delivering value to customers.

## Enabling platform teams

It is clear from these challenges that platform teams are faced with a number of
diverse responsibilities which lead to cognitive load. Just as with their
application team counterparts, this challenge grows with the number and diversity
of users and teams they need to support.

It is important to focus the platform team's energy on the experience and
capabilities that are unique to their specific business. Ways to reduce load on
the platform team include the following:

1. Use implementations from managed service providers where reasonable
1. Leverage open source frameworks and toolkits for creating docs, templates and
   compositions for application team use
1. Ensure platform teams are staffed appropriately for their domain and number
   of customers

## How to measure the success of platforms

Enterprises will want to measure whether their platform initiatives are
delivering the values and attributes discussed above. Also, throughout this paper we've
emphasized the importance of treating internal platforms as products, and good
product management depends on quantitative and qualitative measurement of a
product's performance. To meet these requirements, internal platform teams
should continuously gather user feedback and measure user activities.

As with other aspects of internal platforms, though, platform teams should use
the smallest viable effort to gather the feedback they need. We'll suggest
metrics here but simple surveys and analysis of user behavior may be most
valuable initially.

Categories of metrics that will help enterprises and platform teams understand
the impact of their platforms include the following:

1. User satisfaction and productivity

The first quality sought by many platforms is to improve user experience in order
to increase productivity. Metrics that reflect user satisfaction and
productivity include the following:

- Active users and resources: number of capabilities provisioned and used from the platform
- "Net Promoter Score" (NPS) or other surveys that measure user satisfaction with a product
- Metrics for developer productivity such as those discussed in the SPACE framework [[3]]

1. Organizational efficiency

Another benefit sought from many platforms is to efficiently provide common
needs to a large user base. This is often achieved by enabling user self-service
and reducing manual steps and required human intervention while implementing
policies to guarantee safety and compliance. To measure the efficiency of a
platform in reducing common work, consider measures such as these:

- Latency from request to fulfillment of a service or capability, such as a database or test environment
- Latency to build and deploy a brand new service into production
- Time for a new user to submit their first code changes to their product

1. Product and feature delivery

The ultimate objective of internal platforms is to deliver business value to
customers faster, so measuring impact on a business's own product and feature
releases demonstrates that the objectives of the platform are being met. The
DevOps Research and Assessment (DORA) institute at Google suggests [[4]]
tracking the following metrics:

- Deployment frequency
- Lead time for changes
- Time to restore services after failure
- Change failure rate

Generally, a key objective of platform teams is to align infrastructure and
other IT capabilities with an enterprise's value streams - its products. And so
ultimately the success of an organization's products and applications are the
true measure of the success of a platform.

[3]: https://queue.acm.org/detail.cfm?id=3454124
[4]: https://cloud.google.com/blog/products/devops-sre/the-2019-accelerate-state-of-devops-elite-performance-productivity-and-scaling

## Capabilities of platforms

As described earlier, a platform for cloud-native computing offers and composes
capabilities and services from many supporting providers. These providers may be
other teams within the same enterprise or third parties like "cloud" service
providers. Platforms enable use of the capabilities and services from these
providers by wrapping them with consistent web portals, documentation, code
templates, and programmable APIs and tools. 

In a nutshell, platforms bridge from underlying capability _providers_ to
platform users like application developers; and in the process implement and
enforce desired practices for security, performance, cost governance and
consistent experience. The following graphic illustrates the relationships
between product, platform, and capability providers.

<img src="assets/platform_components.png" width=600px />

We've described the attributes and values of platforms and platform teams. Now
let's describe the kinds of capabilities typically required in cloud-native
computing platforms. Our goal is to guide platform engineers in ensuring their
platform is complete.

1. **Web portal** for provisioning and observing capabilities
1. **APIs** (and CLIs) for automatically provisioning capabilities
1. **"Golden path" templates and docs** enabling optimal use of capabilities
1. **Automation for building and testing** services and products
1. **Automation for delivering and verifying** services and products
1. **Development environments**: hosted IDEs, remote connection tools
1. Instrumentation and dashboards to enable **observability** of services and
   products, including function, performance and cost
1. **Infrastructure** services: compute runtimes, programmable networks, block
   and volume storage
1. **Data** services: databases, caches, object stores
1. **Messaging** and event services: brokers, queues, event fabrics
1. **Identity and secret** management services: service and user identity and
   authorization, certificate and key issuance, static secret storage
1. **Security** services: static analysis of code and artifacts, runtime analysis,
   policy enforcement
1. **Artifact storage**: container image and language-specific package management,
   custom binaries and libraries, source code

<table>
  <thead>
    <tr><td>Capability</td><td>Description</td><td>Example CNCF/CDF Projects</td></tr>
  </thead>
  <tr>
    <td>Web portals for provisioning and observing capabilities</td>
    <td>Publish documentation, service catalogs, and project templates. Publish telemetry about systems and capabilities.</td>
    <td>Backstage</td>
  </tr>
  <tr>
    <td>APIs for automatically provisioning capabilities</td>
    <td>Structured formats for automatically creating, updating, deleting and observing capabilities.</td>
    <td>Kubernetes, Crossplane, Operator Framework, Helm</td>
  </tr>
  <tr>
    <td>Golden path templates and docs</td>
    <td>Templated compositions of well-integrated code and capabilities for rapid project development.</td>
    <td>ArtifactHub</td>
  </tr>
  <tr>
    <td>Automation for building and testing products</td>
    <td>Automate build and test of digital products and services.</td>
    <td>Tekton, Jenkins, Buildpacks, ko, Carvel</td>
  </tr>
  <tr>
    <td>Automation for delivering and verifying services</td>
    <td>Automate and observe delivery of services.</td>
    <td>Argo, Flux, Keptn, Flagger, OpenFeature</td>
  </tr>
  <tr>
    <td>Development environments</td>
    <td>Enable research and development of applications and systems.</td>
    <td>Devfile, Nocalhost, Telepresence, DevSpace</td>
  </tr>
  <tr>
    <td>Application observability</td>
    <td>Instrument applications, gather and analyze telemetry and publish info to stakeholders.</td>
    <td>OpenTelemetry, Jaeger, Prometheus, Thanos, Fluentd, Grafana, OpenCost</td>
  </tr>
  <tr>
    <td>Infrastructure services</td>
    <td>Run application code, connect application components and persist data for applications</td>
    <td>Kubernetes, Kubevirt, Knative, WasmEdge<br />CNI, Istio, Cilium, Envoy, Linkerd, CoreDNS<br />Rook, Longhorn, Etcd</td>
  </tr>
  <tr>
    <td>Data services</td>
    <td>Persist structured data for applications</td>
    <td>TiKV, Vitess, SchemaHero</td>
  </tr>
  <tr>
    <td>Messaging and event services</td>
    <td>Enable applications to communicate with each other asynchronously</td>
    <td>Strimzi, NATS, gRPC, Knative, Dapr</td>
  </tr>
  <tr>
    <td>Identity and secret services</td>
    <td>Ensure workloads have locators and secrets to use resources and capabilities. Enable services to identify themselves to other services</td>
    <td>Dex, External Secrets, SPIFFE/SPIRE, Teller, cert-manager</td>
  </tr>
  <tr>
    <td>Security services</td>
    <td>Observe runtime behavior and report/remediate anomalies. Verify builds and artifacts don't contain vulnerabilities. Constrain activities on the platform per enterprise requirements; notify and/or remediate aberrations</td>
    <td>Falco, In-toto, KubeArmor, OPA, Kyverno, Cloud Custodian</td>
  </tr>
  <tr>
    <td>Artifact storage </td>
    <td>Store, publish and secure built artifacts for use in production. Cache and analyze third-party artifacts. Store source code.</td>
    <td>ArtifactHub, Harbor, Distribution, Porter</td>
  </tr>
</table>

## Glossary

See also <https://glossary.cncf.io/>.

A **platform** aggregates capabilities to serve developers and operators in
development and delivery of products, services and apps. In reference to the
scenarios it aims to support, a platform may be named a "Developer Platform", a
"Delivery Platform", an "App Platform" or even a "Cloud Platform." The
connotations of the older term "Platform-as-a-Service", or PaaS, are also
influential.

**Platforms** enable developers and operators to deliver applications and
services faster by providing and managing common capabilities. Platforms bridge
between platform users and platform capability providers.

**Platform users** include but aren't limited to app developers and operators, data
scientists, COTS software operators, and information workers - whoever runs
software on the platform or uses platform provided capabilities.

**Platform capability providers** implement infrastructure services, often as
controllers and operators.

**Platform developers** design interfaces and tools to enable provisioning and
integration of platform capabilities in applications.

**Platform product managers** are responsible for understanding the experience of
platform users and building a roadmap that addresses platform product gaps and
opportunities.

## Bibliography

- https://slack.engineering/mobile-developer-experience-at-slack/
- https://platformengineering.org/talks-library/netflix-platform-console-to-unify-engineering-experience
- https://platformengineering.org/blog/product-management-for-internal-developer-platforms
- https://humanitec.com/whitepapers/state-of-platform-engineering-report-volume-1
- https://www.gartner.com/en/articles/what-is-platform-engineering
- https://thenewstack.io/platform-engineering-infrastructure-meets-dev-experience/
- https://netflixtechblog.com/full-cycle-developers-at-netflix-a08c31f83249
- https://thenewstack.io/vmware-targets-the-platform-engineer/
- https://platformcon.com/
- https://medium.com/@michael.roy.galloway/your-platform-org-needs-a-purpose-heres-how-to-find-it-64874b082d80
- https://www.infoq.com/news/2022/10/platform-devops-summary/
- https://salaboy.com/2022/09/29/the-challenges-of-platform-building-on-top-of-kubernetes-1-4/
- https://engineering.atspotify.com/2020/08/how-we-improved-developer-productivity-for-our-devops-teams/
- https://cloud.redhat.com/blog/designing-golden-paths
- https://blog.container-solutions.com/how-to-design-an-internal-developer-platform
- https://www.honeycomb.io/blog/future-ops-platform-engineering
- https://www.getambassador.io/resources/rise-of-cloud-native-engineering-organizations/
- https://blog.getambassador.io/the-developer-experience-and-the-role-of-the-sre-are-changing-heres-how-6003a12571c4
- https://www.infoworld.com/article/3639050/complexity-is-killing-software-developers.html
- https://www.xenonstack.com/insights/internal-developer-platform
- https://engineering.atspotify.com/2020/08/how-we-use-golden-paths-to-solve-fragmentation-in-our-software-ecosystem
- https://backstage.spotify.com/blog/measuring-backstage-success-at-spotify/
- https://martinfowler.com/articles/talk-about-platforms.html
- https://www.infoq.com/articles/platform-engineering-roadmap/
- https://github.com/adobe-platform/Adobe-Workshop-ArgoCon2022/blob/main/IDP-Capabilities.md
- https://humanitec.com/blog/top-10-fallacies-in-platform-engineering
- https://thenewstack.io/platform-engineering-challenges-and-solutions/
- https://www.cloudknit.io/blog/platform-engineering
- https://www.cloudknit.io/blog/platform-engineering-challenges-and-solutions
- https://blog.getambassador.io/top-8-mistakes-made-by-platform-engineers-d892c7448684
- https://www.hashicorp.com/resources/non-technical-challenges-of-platform-engineering
- https://www.gartner.com/en/documents/4010078
- https://reprints2.forrester.com/#/assets/2/108/RES176392/report
