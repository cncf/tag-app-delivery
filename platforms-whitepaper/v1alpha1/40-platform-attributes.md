## Attributes of platforms

Following are key attributes that affect the success of a cloud or developer
platform. A platform should:

1. Be designed and continuously improved based on requirements of its users like any product
1. Manage common capabilities required and used by many application teams
1. Offer consistent interfaces and experiences - GUIs, APIs, and tools - for requesting, managing and observing capabilities
1. Include documentation and code templates to ease use of its capabilities.  Advanced platforms should offer docs and templates for composed scenarios.
1. Be self-serviceable - users must be able to request and receive capabilities and compositions independently
1. Be automatable - users must be able to program requests for capabilities
1. Encapsulate implementation of capabilities and services while enabling required configuration and observation
1. Be optional - users should be able to use some platform capabilities but acquire others outside of the platform's offerings

A platform exists to serve the common requirements of many disparate users [1,2]
and use cases. It serves those requirements through consistent interfaces of
several types [3], particularly HTTP APIs, Web portals, and command-line tools.
For example, all platform users require the ability to observe their workloads,
so a platform might offer a capability to collect and display logs, metrics and
traces from applications. It might enable users to request and use that
capability via an API and a Web page.

To be able to use a platform's capabilities users require documentation and
examples [4]. So a platform team needs to not only make a capability like
observability available, but also publish templates and docs to help users
consume it. For example, a platform team might publish a reusable workflow for
building, testing, deploying and verifying a Web application on Kubernetes.
Beyond examples for single capabilities, advanced platforms should group
collections of templates and guidance for specific scenarios, a bundle often
described as a golden path.

The capabilities provided by a platform should be available to users on demand
[5] with minimal manual intervention. The interfaces discussed above - APIs and
web pages - should enable users to get resources they need in a few minutes with
at most an approval. For example, a web page describing a database management
service should include a button to request a database and share a locator and
credentials for that database within a few minutes of the request.

One of the purposes of a platform is to reduce cognitive load on product teams,
so services offered by the platform should not need to be operated by consumers;
either the platform provider or its delegates, such as a cloud service, should
handle those operations, hiding complexity [7] from users. For example, users
may often require a message queue, but shouldn't have to manage a message
broker.

Platforms are intended to make product development more efficient, so it's
important they not be an impediment [8] when the most efficient path is to not
use the platform's capabilities. Platforms should enable product teams to
provide and manage their own capabilities when necessary. For example, if a
platform team doesn't provide a graph database and it's required for a product,
it should be possible for that product team to provision and operate a graph
database themselves.