# Purpose
In the distributed world of cloud-native computing different artifacts and packages are used to transport configuration and code for the many services and capabilities that comprise and support workloads and applications. As an example, today ArtifactHub advertises that it can crawl about 20 such artifact types [1]. These "cloud-native" bundles add to the previous proliferation of package and artifact types for software dependencies such as Maven and npm and for system packages like deb and rpm.

This abundance of package types and formats adds complexity and risk for cloud application developers and architects trying to provision and run cloud-native workloads. Different tools and controllers must be carefully learned and installed to bundle, unbundle, verify and deploy each artifact type. This complexity slows product development by users, impedes innovation and collaboration amongst projects, and increases risks of insecure configuration.

To reduce this complexity and facilitate collaboration and innovation, WG Artifacts will gather stakeholders from many CNCF and open source projects offering packaging, distribution and deployment mechanisms for bundles of configuration and code.

**The WG will:**  
* **Develop common patterns**  
*  **Advocate for innovative projects**  
*  **Gather end user feedback**
**for packaging, discovery, distribution, and deployment mechanisms for** **cloud-native software artifacts.**

# Alignment with TAG App Delivery and CNCF
TAG App Delivery's charter [2] calls on the TAG to develop best practices, foster collaboration between projects, improve interoperability and propose new initiatives and projects related to the following domains which this working group would target.

* Application bundling and deployment
* Package management
* Application delivery workflow and strategy
* Configuration source-driven workflow
* Release management

The work on extensions, patterns and prototypes in this CNCF TAG complements work on specifications in the Open Containers Initiative (OCI) itself.

# Goals
* Gather existing schemas used via OCI Artifacts as described in https://github.com/opencontainers/image-spec
* Contribute to a common data model for Artifacts in OCI
* Seek to minimize or avoid any specification changes
* Define an Artifact Query API based on specific or common data models as an OCI distribution-spec extension
* Publish a prototypical implementation of the Artifact Query API service within a registry and a prototypical implementation of a client for that API service

# Activities
The working group intends to carry out (but is not limited to) the following:
* Gather stakeholders using OCI specifications distribution-spec and image-spec to package and distribute artifacts to document their bundle layouts and content schemas and seek common patterns.
* Why? Reduce cognitive load on end users, reduce errors in configuration, and optimize ongoing development in this space.
* Gather stakeholders using non-OCI formats to document their layout and schemas and seek synergies and opportunities. Focus on these artifacts types in priority order:
  1. Cloud-native artifact types not currently packaged in OCI, e.g. those in ArtifactHub [3]
  2. Software library artifacts such as those in npm, pyPi and Maven Central
System package artifacts such as those in rpm, deb, brew
  3. Advocate for and contribute to common formats to enable search and discovery of attributes and aspects of artifacts like SBOMs, attestations and other elements
  4. Establish "duck types" [4] for common attributes
  5. Demonstrate via prototypes use of published schemas to facilitate query and analysis of bundles and content.

[1]: https://artifacthub.io/docs/topics/repositories/
[2]: https://github.com/cncf/toc/blob/main/tags/app-delivery.md#areas-considered-in-scope
[3]: https://artifacthub.io/docs/topics/repositories/
[4]: https://knative.dev/docs/concepts/duck-typing/ 
