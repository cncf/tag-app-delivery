# Purpose
In the distributed world of cloud-native computing, different artifacts and packages are used to transport configuration and code for the many services and capabilities that comprise and support various types of workloads. As an example, today ArtifactHub advertises that it can crawl about 20 such artifact types [1]. These "cloud-native" bundles adds to the previous proliferation of package and artifact types for software dependencies, such as Maven and npm and for system packages, like deb and rpm.

This abundance of package types and formats adds complexity and risk for cloud application developers and architects trying to provision and run cloud-native workloads. Different tools and controllers must be carefully tailored and installed to bundle, unbundle, verify and deploy each artifact type. This complexity slows product development for users, impedes innovation and collaboration amongst projects, and increases risks of insecure configuration.

To reduce this complexity and facilitate collaboration and innovation, WG Artifacts will gather stakeholders from many CNCF and open source projects offering packaging, distribution and deployment mechanisms for bundles of configuration and code.

**The WG will:**  
* **Develop common patterns**  
*  **Advocate for innovative projects**  
*  **Gather end user feedback**
**For packaging, discovery, distribution, and deployment mechanisms for** **cloud-native software artifacts.**

# Alignment with TAG App Delivery and CNCF
TAG App Delivery's charter [2] calls on the TAG to develop best practices, foster collaboration between projects, improve interoperability, and propose new initiatives and projects related to the following domains for which this working group would target.

* Application bundling and deployment
* Package management
* Application delivery workflow and strategy
* Configuration source-driven workflow
* Release management

The work on extensions, patterns and prototypes in this CNCF TAG complements work on specifications in the Open Containers Initiative (OCI) itself.

# Goals
* Research - Collect existing software packaging schemas, use-cases, and other evidence to aid in the design of a data model and search API for artifact management. 
* Design - Define a conceptual model and search API from the lessons learned from the research phase, that will be used to build prototypes and inform future specifications.
* Prototype - Develop prototype implementations of a data model and search API based on the work from the design phase to validate the approach and to provide a reference implementation for future specifications.

# Activities
The working group intends to carry out (but is not limited to) the following:
* Gather stakeholders using OCI specifications distribution-spec and image-spec to package and distribute artifacts to document their bundle layouts and content schemas and seek common patterns.
* Gather stakeholders using non-OCI formats to document their layout and schemas to seek synergies and opportunities. Focus on the following artifacts types in priority order:
  1. Cloud-native artifact types not currently packaged in OCI format, e.g. those in ArtifactHub [3]
  2. Software library artifacts, such as those in npm, PyPi, and Maven Central
  3. System package artifacts, such as those in RPM, deb, and brew repositories
* Advocate for and contribute to common formats to enable search and discovery of attributes and aspects of artifacts like SBOM's, attestations, and other elements
* Establish "duck types" [4] for common attributes
* Demonstrate via prototypes the use of published schemas to facilitate query and analysis of bundles and content.

[1]: https://artifacthub.io/docs/topics/repositories/
[2]: https://github.com/cncf/toc/blob/main/tags/app-delivery.md#areas-considered-in-scope
[3]: https://artifacthub.io/docs/topics/repositories/
[4]: https://knative.dev/docs/concepts/duck-typing/ 
