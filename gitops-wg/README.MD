# GitOps Working Group

The GitOps Working Group is a WG under the CNCF App Delivery SIG.

The focus of the GitOps WG is to clearly define a vendor-neutral, principle-led meaning of GitOps. This will establish a foundation for interoperability between tools, conformance, and certification. Lasting programs, documents, and code are planned to live within the [OpenGitOps](https://github.com/open-gitops) project.

## Growing Adoption of GitOps

The creation of the GitOps Working Group was driven by the accelerating adoption of GitOps tools and methodologies by users of services from Amazon, Codefresh, GitHub, Microsoft, Weaveworks, and hundreds of other leading global companies that are adopting GitOps.
This, combined with the recommendation by the Cloud Native Computing Foundation (CNCF) [user community to adopt Flux](https://radar.cncf.io/2020-06-continuous-delivery), made it clear that GitOps is fast becoming the methodology of choice for operating modern cloud native infrastructure and applications.
The CNCF user community reported that development, DevOps, and operations teams who adopt GitOps tooling and follow best practices experience improvements in productivity, stability, reliability, and security for their cloud native environments.

## The What and Why of GitOps

If you are new to GitOps, [it builds and iterates](https://www.weave.works/blog/gitops-operations-by-pull-request) on ideas drawn from DevOps and Infrastructure as Code that started with [Martin Fowler’s comprehensive Continuous Integration overview](https://martinfowler.com/articles/continuousIntegration.html) and provides the freedom to choose the tools that you need for your specific use cases.

Individuals, teams, and organizations who implement GitOps experience many benefits, including:

- Increased Developer & Operational Productivity
- Enhanced Developer Experience
- Improved Stability
- Higher Reliability
- Consistency and Standardization
- Stronger Security Guarantees

## GitOps Principles

The group’s initial task – to "clearly define a vendor-neutral, principle-led meaning of GitOps" – is expressed as GitOps _Principles_, which are the foundation of GitOps practices.

This aims to give participants in the cloud native ecosystem a common understanding of GitOps systems based on shared principles, rather than a matter of individual opinion or implementation preference.

🚧 The GitOps Principles are currently a work in progress. For current status, follow [PR #48](https://github.com/gitops-working-group/gitops-working-group/pull/48).

🕠 In the meantime, you may refer to the initial [Draft Definition](https://docs.google.com/document/d/11EZfvB2FFI837nMmArnyv-wizsIJvc-4_xdgfoUXF4o/view), which proposes the principles as follows:

1. **Declarative Configuration**: All resources managed through a GitOps process must be completely expressed declaratively.
2. **Version controlled, immutable storage**: Declarative descriptions are stored in a repository that supports immutability, versioning and version history. For example, git.
3. **Automated delivery**: Delivery of the declarative descriptions, from the repository to runtime environment, is fully automated.
4. **Software Agents**: Reconcilers maintain system state and apply the resources described in the declarative configuration.
5. **Closed loop**: Actions are performed on divergence between the version controlled declarative configuration and the actual state of the target system.

## How to Get Involved

The GitOps Working Group is an open group, inviting companies and individuals to join and contribute to the community and the adoption of GitOps across the cloud native landscape.
There are a few ways you can get involved:

- Watch or star this repo to see when things change
- Attend a [Working Group meeting](./MEETINGS.md)
- [Open an issue](/../../issues/new) and let us know how you're using GitOps and any important considerations we should include
- Join `#wg-gitops` on [CNCF Slack](https://slack.cncf.io/)
- Join the [SIG App Delivery](https://github.com/cncf/sig-app-delivery) mailing list, and watch or participate in topics prefixed with `[gitops-wg]`
- See [Working Group project boards](https://github.com/orgs/gitops-working-group/projects) for status of work, or for ideas on areas that could use additional participation

The Working Group will review all open issues and PRs at our regular working group meeting (schedule coming soon).

## Timeline

This timeline is a work in progress.
If you are interested in keeping abreast of any new developments, please see [How to Get Involved](#how-to-get-involved).

| When | What |
| -- | -- |
| November 19, 2020 | Amazon, Codefresh, GitHub, Microsoft, and Weaveworks announced the creation of the GitOps Working Group. |
| Q4 of 2020 | Form the group. Provisional governance bootstrapped. For details, see the initial [GitOps WG Charter](https://docs.google.com/document/d/11EZfvB2FFI837nMmArnyv-wizsIJvc-4_xdgfoUXF4o/view). |
| Date TBD | Establish a first version of the GitOps Principles |
| Date TBD | Clearly established governance. For current status, follow [PR #40](https://github.com/gitops-working-group/gitops-working-group/discussions/40). |
| March 19 - April 16, 2021 | [CFP open](https://docs.google.com/forms/d/e/1FAIpQLSeNahDbiEolx6WZmtxx4L65qmq7pZTX86nQAltq2uC12tCQYg/viewform) for GitOpsCon EU 2021 |
| May 3, 2021 | GitOpsCon EU 2021. Pre-registration is required. See [Kubecon + CloudNativeCon Co-located events listing](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/program/colocated-events/#gitops-con) for details. |
