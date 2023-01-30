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

1. What is a platform
1. Why are platforms valuable
1. Attributes of successful platforms
1. Attributes of successful platform teams
1. Challenges when implementing platforms
1. How to measure the success of platforms
1. Capabilities of platforms

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
or a secret store. A more advanced platform also _composes_ these capabilities
into experiences and templates fit for key scenarios like web application
development or data analysis. For example, some organizations today provide
_developer_ platforms that compose resources required for application
development such as compute environments, pipeline runners, database systems,
messaging queues, identities and telemetry collectors. An organization may also
provide a data analysis ("MLOps") platform that composes data ingestion and
transformation services, model training services, model deployment pipelines and
model servers.

By offering consistent experiences for individual and/or scenario-oriented sets
of capabilities, platforms make it easy for their users to deliver valuable
products.

[1]: https://www.atlassian.com/devops/frameworks/team-topologies
[2]: https://martinfowler.com/articles/talk-about-platforms.html

## Why are platforms valuable

What economic and business reasons motivate enterprises to implement platforms
for cloud-native computing?  The value of platforms emerges from a) the
consolidation of shared capabilities in a team of experts focused on b) making
those services and capabilities easy to integrate and use in digital products
and applications.

Enterprises adopting platform engineering can expect to achieve the following:

1. Accelerate product development and delivery by intentionally dedicating teams
   to platform services and thereby reducing cognitive load on product teams
1. Improve reliability and resiliency of products relying on platform
   capabilities by dedicating experts to configure and manage them
1. Accelerate product development and delivery by reusing and sharing platform
   tools and knowledge across many teams in an enterprise
1. Reduce risk of security, regulatory and functional issues in products and
   services by governing platform capabilities and the users, tools and processes
   surrounding them
1. Enable cost-effective and productive use of services from public clouds
   and other providers by enabling delegation of implementations to those providers
   while maintaining control over user experience

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
\[5\] for foundational but undifferentiated capabilities like databases and
identity.

Top use cases an enterprise can meet with a basic platform include the following:

1. Developers of products and services can automatically provision runtime
   capabilities such as compute, storage, databases and service identity and
   immediately integrate and use those as part of their products
1. Developers of products and services can automatically provision supporting
   services such as task runners, package registries, deployment orchestrators and
   observability systems to build, verify, operate and observe their products
1. Operators of third-party products and services can automatically provision
   spaces and supporting services to deploy and use those third-party products and
   services

As mentioned in the previous section, mature platforms include scenario-oriented
templates and cater to more specific use cases too. For example, an internal
developer platform includes templates for provisioning complete development
environments and could serve the following use cases:

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

## Attributes of platforms

Following are key attributes that affect the success of a platform for
cloud-native computing. Such a platform should:

1. Be designed and continuously improved based on requirements of its users like
   any product
1. Manage common capabilities required and used by many application teams
1. Offer consistent interfaces and experiences - GUIs, APIs, and tools - for
   requesting, managing and observing capabilities
1. Include documentation and code templates to ease use of its capabilities.
   Advanced platforms should offer docs and templates for composed scenarios.
1. Be self-serviceable - users must be able to request and receive capabilities
   and compositions independently
1. Be automatable - users must be able to program requests for capabilities
1. Encapsulate implementation of capabilities and services while enabling
   required configuration and observation
1. Be optional - users should be able to use some platform capabilities but
   acquire others outside of the platform's offerings

A platform exists to serve the common requirements of many disparate users \[1,2\]
and use cases. It serves those requirements through consistent interfaces of
several types \[3\], particularly HTTP APIs, Web portals, and command-line tools.
For example, all platform users require the ability to observe their workloads,
so a platform might offer a capability to collect and display logs, metrics and
traces from applications. It might enable users to request and use that
capability via an API and a Web page.

To be able to use a platform's offerings, users require documentation and
examples \[4\]. So a platform team needs to not only make a capability like
observability available, but also publish templates and docs to help users
consume it. For example, a platform team might publish a reusable workflow for
building, testing, deploying and verifying a Web application on Kubernetes.
Beyond examples for individual resource types, advanced platforms should group
collections of templates and guidance for specific scenarios, a bundle often
described as a golden path.

The capabilities provided by a platform should be available to users on demand
\[5\] with minimal manual intervention. The interfaces discussed above - APIs and
web pages - should enable users to get resources they need in a few minutes with
at most an approval. For example, a web page describing a database management
service should include a button to request a database and share a locator and
credentials for that database within a few minutes of the request.

One of the purposes of a platform is to reduce cognitive load on product teams,
so services offered by the platform should not need to be operated by consumers;
either the platform provider or its delegates, such as a cloud service, should
handle those operations, hiding complexity \[7\] from users. For example, users
may often require a message queue, but shouldn't have to manage a message
broker.

Platforms are intended to make product development more efficient, so it's
important they not be an impediment \[8\] when the most efficient path is to not
use the platform's offerings. Platforms should enable product teams to
provide and manage their own capabilities when necessary. For example, if a
platform team doesn't provide a graph database and it's required for a product,
it should be possible for that product team to provision and operate a graph
database themselves.

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

Having defined what platforms are and the values they intend to provide, let's
consider how to measure if a platform is providing those values. Notably, the
success of a platform is directly correlated to the success of products deployed
on it, and this in turn is largely dependent on user experiences with the
platform.

A platform's first value is to improve product delivery so platform success
metrics should reflect that. The DevOps Research and Assessment (DORA) metrics
suggested by Google provide a baseline and include:

- Frequency of updated deployments
- Lead time for introducing a change
- Rate of failure of newly-introduced changes
- Mean time to recovery from failed changes

And because a platform's success also depends on its users, platforms should
also measure users' experiences, including:

- Time for a new contributor to submit their first (or 10th!) PR
- Number of contributions from users, e.g. Backstage plugins, Crossplane
  compositions
- Number of projects which diverge from "golden paths" and provided capabilities
- Number of tickets opened related to platform capabilities
- Developer satisfaction in the enterprise
    - Net Promoter Score (NPS)
    - SPACE framework: https://queue.acm.org/detail.cfm?id=3454124

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
    <td>Store, publish and secure built artifacts for use in production. Cache and analyze third-party artifacts.  Store source code.</td>
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
