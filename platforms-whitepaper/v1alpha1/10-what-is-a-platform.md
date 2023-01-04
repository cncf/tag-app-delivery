## What a platform is

A platform in distributed computing is a layer that provides common supporting
capabilities and services for many uses. A platform provides consistent user
experiences for getting, using and managing these capabilities and services,
including Web portals and pages, scenario-specific code templates, automatable
APIs and command-line tools.

According to Atlassian [[1][]], "platform teams create capabilities that can be used by
numerous stream-aligned teams with little overhead.... platform teams minimize
resources and cognitive load of the stream-aligned team... platform teams can
create a cohesive experience that spans across different user experiences or
products."

According to Martin Fowler and Evan Bottcher [[2][]], "a digital platform is a
foundation of self-service APIs, tools, services, knowledge and support which
are arranged as a compelling internal product. Autonomous delivery teams can
make use of the platform to deliver product features at a higher pace, with
reduced coordination."

Platforms are particularly relevant in distributed systems which separate
supporting capabilities from application-specific logic. In such environments
capabilities like databases and object stores, message queues and brokers,
observability collectors and dashboards, user directories and authentication
systems, task runners and reconcilers and more are managed independently and
integrated into applications running in containers and machines. A platform
provides those capabilities to many teams in a way that makes them easy to
integrate in applications.

A basic platform provides consistent experiences to application developers for
managing individual capabilities and services such as database systems or secret
stores. A more advanced platform also composes these capabilities and services
into scenario-specific experiences and templates fit for key scenarios like web
application development or data analysis and model training. For example, some
organizations provide an "internal developer platform" that composes
capabilities required for application development such as compute environments,
pipeline runners, database systems, messaging queues, identities and telemetry
collectors. Or as another example, some organizations provide data analysis
platforms that compose data ingestion and transformation services, model
training services, model deployment pipelines and model servers.

By offering consistent experiences for individual capabilities and/or
scenario-oriented sets of capabilities, these platforms make it easy for their
users to deliver valuable products.

### Platform capabilities

As just described, a platform packages and composes capabilities and services
from many underlying providers. These providers may be other teams within the
enterprise or third parties like cloud and managed service providers.  Platforms
enable use of the capabilities and services from these providers by wrapping
them with consistent web portals, documentation, code templates, and
programmable APIs and tools. That is, platforms bridge from underlying
capability providers to platform users like application developers while
implementing and enforcing desired practices for security, performance and
consistent experience.

The following graphic illustrates the relationships between product, platform,
and capability providers.

<img src="assets/platform_components.png" width=600px />

[1]: https://www.atlassian.com/devops/frameworks/team-topologies
[2]: https://martinfowler.com/articles/talk-about-platforms.html