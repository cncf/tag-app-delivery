# gitops-working-group

## Announcing the GitOps Working Group

On November 19, 2020, Amazon, Codefresh, GitHub, Microsoft, and Weaveworks are announcing the creation of the GitOps Working Group.
This will be an open CNCF community project created inside the CNCF [gitops-working-group GitHub organization](https://github.com/gitops-working-group) as the initial venue for collaboration and open governance.

The GitOps Working Group’s goal is to provide companies and individuals with the skills, knowledge and competency to implement GitOps tooling and methodologies which simplify the operation and management of infrastructure and cloud native applications.

The group’s initial task will be to deliver a GitOps Manifesto which clearly defines the principles and technical aspects of GitOps.
The GitOps Manifesto will be vendor and implementation neutral, and aims to grow a common understanding of GitOps systems based on shared principles, rather than a matter of individual opinion.
A second aim is to encourage innovation by clarifying the technical outcomes rather than the code, tests, or organizational elements needed to achieve them.

### Growing Adoption of GitOps

The creation of the GitOps Working Group was driven by the accelerating adoption of GitOps tools and methodologies by users of services from Amazon, Codefresh, GitHub, Microsoft, Weaveworks, and hundreds of other leading global companies that are adopting GitOps.
This, combined with the recommendation by the Cloud Native Computing Foundation (CNCF) [user community to adopt Flux](https://radar.cncf.io/2020-06-continuous-delivery), made it clear that GitOps is fast becoming the methodology of choice for operating modern cloud native infrastructure and applications.
The CNCF user community reported that development, DevOps, and operations teams who adopt GitOps tooling and follow best practices experience improvements in productivity, stability, reliability, and security for their cloud native environments.

### The What and Why of GitOps

If you are new to GitOps, [it builds and iterates](https://www.weave.works/blog/gitops-operations-by-pull-request) on ideas drawn from DevOps and Infrastructure as Code that started with [Martin Fowler’s comprehensive Continuous Integration overview](https://martinfowler.com/articles/continuousIntegration.html) and provides the freedom to choose the tools that you need for your specific use cases.

Individuals, teams, and organizations who implement GitOps experience many benefits, including:

- Increased Developer & Operational Productivity
- Enhanced Developer Experience
- Improved Stability
- Higher Reliability
- Consistency and Standardization
- Stronger Security Guarantees

### GitOps Principles

To give participants in the cloud native ecosystem clarity on what GitOps means, and by extension to realize these benefits, the creators of this working group defined these five core GitOps Principles that are at the foundation of GitOps practices.

The Five GitOps Principles are as follows:

1. **Declarative Configuration**: All resources managed through a GitOps process must be completely expressed declaratively.
2. **Version controlled, immutable storage**: Declarative descriptions are stored in a repository that supports immutability, versioning and version history. For example, git.
3. **Automated delivery**: Delivery of the declarative descriptions, from the repository to runtime environment, is fully automated.
4. **Software Agents**: Reconcilers maintain system state and apply the resources described in the declarative configuration.
5. **Closed loop**: Actions are performed on divergence between the version controlled declarative configuration and the actual state of the target system.

### An open working group

The founders of the GitOps Working Group are creating a neutral working group to clearly define a principle-lead meaning of GitOps to better enable interoperability between tools.
With a clear definition, GitOps Certification Programs for individuals will also be possible.

With today’s announcement of the GitOps Working Group, the group’s founders are inviting companies and individuals who are actively participating in the rapidly growing GitOps ecosystem to join this new community and help contribute to its success as a standard!

### About the GitOps Manifesto

The founders of the GitOps Working Group envision the creation of a GitOps Manifesto that will make it easier for companies to understand what the key principles of GitOps are while at the same time driving interoperability between tools that have incorporated these principles.

### How to Get Involved

With the announcement of the GitOps Working Group the founders would like to invite other companies to join the group and contribute to the community and the adoption of GitOps across the cloud native landscape.
There are a few ways you can get involved:

- Watch or star this repo to see when things change.
- Attend a [Working Group meeting](./MEETINGS.md).
- [Open an issue](/../../issues/new) and let us know how you're using GitOps and any important considerations we should include.
- Join `#wg-gitops` on [CNCF Slack](https://slack.cncf.io/)

We'll review all open issues and PRs at our regular working group meeting (schedule coming soon).

### Timeline

The goal of the GitOps Working Group’s founders is to: firstly, form the group during Q4 of 2020 and secondly, to establish V1 of the GitOps Manifesto by the end of March, 2021.
If you are interested in keeping abreast of any new developments, please visit follow this repository.

### Additional Information

Documenting the GitOps principles, and supporting WG GitOps in CNCF App Delivery SIG as an OSS project.

Please see [GitOps WG Charter](https://docs.google.com/document/d/11EZfvB2FFI837nMmArnyv-wizsIJvc-4_xdgfoUXF4o/view)
and [Draft Definition](https://docs.google.com/document/d/11EZfvB2FFI837nMmArnyv-wizsIJvc-4_xdgfoUXF4o/view)
for initial details. NOTE: We have moved the gitops definition into git - see PR #48
