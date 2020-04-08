# CNCF SIG Application Delivery Graduation Review

## Harbor Graduation Recommendation

Since joining the CNCF in [July 2018](https://www.cncf.io/blog/2018/07/31/cncf-to-host-harbor-in-the-sandbox/) as a Sandbox project and in [November 2018](https://www.cncf.io/blog/2018/11/13/harbor-into-incubator/) moving to an Incubating Project, Harbor has built a healthy community of users, maintainers, and production implementations and brought unique values to the application delivery ecosystem.

On behalf of the CNCF SIG Application Delivery, we believe Harbor is ready for the CNCF [Graduation stage](https://github.com/cncf/toc/blob/master/process/graduation_criteria.adoc#graduation-stage) and meets the graduation requirements from perspective of the SIG.

*Name of project:* Harbor

*Project Description:* Harbor is an open source cloud native registry that provides trust, compliance, performance, and interoperability. As a private on-premises registry, Harbor fills a gap for organizations that prefer not to use a public or cloud-based registry or want a consistent experience across clouds. Harbor secures images with role-based access control, scans images for vulnerabilities, and signs images as trusted. A CNCF Incubating project, Harbor helps you consistently and securely manage images across cloud native compute platforms like Kubernetes and Docker.

Harbor is currently a CNCF Incubating Project. 

## Summary of Fulfillment from SIG Application Delivery Perspective
Requirements from SIG Application Delivery:
- Is Harbor fully OCI compliant so it can support various application artifacts?
- Can Harbor be used in large scale software distribution scenarios?

Conclusions:

1. Full OCI compliance to be used as standard application registry.
* [x] Yes, with Harbor v2.0 (to be released in April 2020), Harbor will be fully OCI compliant. It will support any OCI compliant artifact type, providing them many of the capabilities that Harbor offers today → RBAC, quotas, retention policy, replication, policy, and more. Scanning will be available to images and CNAB bundles.
2. Software distribution capabilities with collaboration with wider community.
* [x] Yes, Harbor v2.1, slated to be released prior to KubeCon in August 2020, will significantly improve the image distribution capabilities of Harbor including: 1. Proxy Cache 2. Support P2P in Harbor to help bootstrap image distribution and image placement.
3. Scalability to be used as center of application distribution in large scale application delivery environment (e.g. web-scale, serverless etc).
* [x] Yes, Harbor has been tested according to various performance, scalability and resource consumption bounds by both the Harbor team and downstream users. The data is already included in the Due Diligence doc.


### Summary of what was reviewed, and by who
* Approver: Lei Zhang (CNCF SIG-App Delivery Chair)

### Recommendation to TOC
Harbor today (as of version 1.10) supports only two artifact types, container images and Helm charts. While in Harbor v2.0 (to be released in April 2020), Harbor will be fully OCI compliant. So it can support any OCI compliant artifact type (including Helm Charts, CNAB bundle etc), and provide them many of the capabilities that Harbor offers today. Harbor also has concrete plan to improve its software distribution capability in very near future. So there's no other concern from SIG Application Delivery.