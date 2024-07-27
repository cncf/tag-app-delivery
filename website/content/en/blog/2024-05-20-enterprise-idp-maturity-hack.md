---
title:  Enterprise IDPs must mature fast. Here’s how infrastructure optimization can help
slug:   enterprise-idp-maturity-hack
date:   2024-05-28 12:00:00 +0000
author: Li-Or Amir
categories:
- Article
tags:
- Community Contribution
- WG Platforms
---
Enterprises are expected to benefit from platform engineering sooner and bigger than anyone else. This has 2 main reasons:

1. With engineering bodies 100’s or 1,000’s large, standardization across the board is both a pressing need and a major event. 

2. In large organizations, concerns like security, regulatory compliance, and cost efficiency can impede development.

With these two combined, the enterprise route to faster time-to-market must also go through scalable, effective guardrails along the product lifecycle. Therefore, Internal Developer Platform (IDP) capabilities that might be dismissed as day-2, effectively become day-1 imperatives. In other words, enterprise IDPs must mature fast – at least in some respects like compliance, security, and efficiency. When the MVP emerges, those must be already thoroughly worked.


## IDP-related frameworks you should know

3 cloud-native frameworks might prove useful in designing your platform MVP for faster time-to-(business) value. Let’s see what they mean to enterprises, identifying _one_ takeaway from each towards that value.   


### CNCF IDP maturity model

[The platform engineering maturity model](https://tag-app-delivery.cncf.io/whitepapers/platform-eng-maturity-model/) presents _five_ IDP aspects (investment, adoption, interfaces, operations, measurement), each described in _four_ maturity states (provisional, operational, scalable, optimizing). 

This matrix format means that, as the IDP evolves, some aspects might mature before the others. For instance, a certain IDP might be merely “operational” on its investment and adoption aspects, but demonstrate “optimized” interfaces, operations, and measurement. 

This scenario becomes likely once your IDP includes cost optimization capabilities; unlike other managed SaaS, those typically repay their subscription price and beyond. So, no need to wait until a fully “scalable” stage before they’re introduced. Let’s illustrate it with a hypothetical example:

#### Example: soonicorn.io IDP status

|             |                                                                                                                                                                                                                                                                           |             |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| Aspect      | Descriptive example                                                                                                                                                                                                                                                       | Maturity    |
| Investment  | Dedicated platform team of 4: Senior platform engineer, full-stack developer, product manager, part-time UX designer.                                                                                                                                                     | Scalable    |
| Adoption    | Push: Teams are instructed to stop using their own deployment scripts; Cloud expenditure for Dev & QA is only authorized if resources are spun up via the IDP.                                                                                                            | Operational |
| Interfaces  | Integrated services: Every new project receives a space in a task runner (pipelines) and a runtime environment (Kubernetes namespace) and can opt into serverless runtime.Automation schedules pods to run on spot instances in a Dev cluster configured for bin packing. | Optimized   |
| Operations  | Managed services: VM users are only asked to declare their app as stateful/stateless and fault tolerant/intolerant. VM provisioning then spins up a spot instance configured for state reattachment and fallback or utilizes existing commitments.                        | Optimized   |
| Measurement | Qualitative and quantitative: Within 1 year of MVP release, Dev vCPU hours increase by 30% while total Dev cloud costs only increase by 15%. Integrated FinOps tool analyzes each node to provide detailed cost attribution per project and team.                         | Optimized   |

This scenario is highly relevant for enterprises, which are financially conservative by nature. For those, measurement is, above all, financial. The board is all in for engineering productivity, but it must be shown expected ROI to approve any IDP investment. In other words, an enterprise platform is expected to repay itself by saving software engineering hours or otherwise money in a direct, measurable way. Therefore, **the IDP mandate may depend on the ability to demonstrate how it saves the organization money:**

- Does it improve DORA time-centric metrics? (i.e. lead time for change, time to restore service)

- Does it decrease downtime whereas the cost of downtime is known?

- Does it lead to reduced cloud expenditure?

 Achieving this may require the IDP to integrate both monitoring (e.g. GitLab) and guardrails for responsible cloud usage, backed by integrated tooling that applies savings techniques and visually tracks their results.

**One takeaway:** an IDP can earn initial credit by generating financial value as soon as its provisional investment or adoption phase, i.e. without changing the way the engineers work. For example, it can enforce cost-effective cloud resource provisioning policies in the backend. The cost reduction generated by those is easily measured and understood. Thus, this so-called day-2 capability makes more sense as part of the platform’s MVP. The value they unlock might actually win the mandate to keep maturing the platform in other aspects.


### CNoE from a platform engineering perspective

[The Cloud Native Operational Excellence (CNoE) initiative](https://cnoe.io/) aims to help enterprises ease into cloud-native tooling, especially open-source. Platform engineering is its #1 use case. CNoE advocates several tenets to increase cloud-native maturity in enterprises:

1. **Tools over practices –** as hard as it is, tool adoption is still easier than culture change. Pick tools that automate the practices you want to implement – especially those your developers are not used to perform hands-on, like cloud resource provisioning.

2. **Convergence –** prefer tools that fulfill multiple desired capabilities, and can close a circle on data collection, reporting, recommendations and execution.

3. **Managed solutions –** the support gap can be closed by commercial vendors offering manages services for popular cloud-native solutions like Kubernetes, Linux and distros, or popular IDP projects Backstage and Crossplane.  

4. **Customizable standard for infrastructure** – balance between the enforcement of requirements to developer usability 

5. **Powered by Kubernetes but not confined to it** – prefer tooling that isn’t confined to a specific container engine, so besides different types of managed Kubernetes they may use ECS, Openshift, VMWare Tanzu and others.

These tenets are no longer mere theory: CNoE’s centerpiece is [the idpBuilder tool](https://github.com/cnoe-io/idpbuilder), accompanied by a non-branded reference architecture. For enterprises looking for even more out-of-the-box open-source IDPs, [BACK Stack](https://backstack.dev/intro/) emerges as another practical application of CNoE principles, with opinionated tooling selection which can be modified later.

Is this nirvana? I’m not sure. In my opinion, the challenges CNoE sets to solve (rapid evolution of standards, DevOps not always a good fit) aren’t the most painful ones _in enterprises_.

To complete the picture, here are some grave open-source concerns I heard directly from enterprise engineers:

1. **Fragmentation** – open-source tools often don’t integrate natively, so they don’t always work off the same datasets and policies – which might lead to frequent failures. When one tool only recommends (e.g. Opencost) and another only executes (e.g. Terraform), you need at least one critical pair of human eyeballs at the intersection. And at scale, there are 1,000’s of those intersections daily.

2. **No support** - Open-source tools lack professional support, which places extra load on in-house engineers.

3. **Privacy concerns** – GDPR-compliant organizations usually rule out open-source software and DBs, and also SaaS hosted on hyperscalers (AWS, Azure or GCP)The potential fine for working on data acquired unethically or exposing their own users’ data is just too big. Even if it’s free, some procurement guidelines still apply!

4. **Inability to measure added value** – in the case of cloud-native SaaS which serves as part of a stack, or does something specific along the software supply chain, its  contribution to metrics improvement cannot always be isolated.

**One takeaway:** in the previous section we established the importance of cost optimization as an IDP’s day-1 capability. To realize this according to CNoE tenets, we want to integrate into our IDP a cost optimization solution that is managed, converged, highly automated, and suits all containerized and non-containerized settings.


### Well-architected AWS, Azure, and GCP

Cost optimization is a Well-Architected pillar in [AWS](https://docs.aws.amazon.com/wellarchitected/latest/cost-optimization-pillar/welcome.html), [Azure](https://learn.microsoft.com/en-us/azure/well-architected/cost-optimization/principles#design-with-a-cost-efficiency-mindset), and [GCP](https://cloud.google.com/architecture/framework/cost-optimization) alike. Each hyperscaler outlines pillar slightly different, but all touch aspects of designing & planning, monitoring & managing, and cost-reducing activities. Out of all 3, I find Azure’s to be the most straightforward:

1. Develop cost-management discipline (by FinOps practices)

2. Design with a cost-efficiency mindset

3. Design for usage optimization

4. Design for rate optimization

5. Monitor and optimize over time

Intuitively, what’s right for your entire public cloud estate is right for an IDP that runs in it. This leads to a two-fold conclusion: the IDP itself must run cost-efficiently on cloud resources; and it should help cultivate the same cost efficiency practices in the entire Dev organization. 

From a FinOps standpoint, you want your IDP to provide visualized cost observability and accurate usage attribution of each node’s components by label, namespace etc. This means it will facilitate collaboration between the engineering body and other cost stakeholders, FinOps first.

From an activity standpoint, you want it to leverage discount compute (spots, RIs, SPs) and to continuously “squeeze the lemon” of each machine’s CPU, memory, storage, and network capacity. This is achievable by automating Kubernetes optimization techniques like [bin packing, rightsizing,](https://spot.io/blog/beyond-savings-overlooked-aspects-of-container-optimization/) shutdown scheduling, and dynamic storage.

**One takeaway:** Your IDP’s ideal integrated cost optimization solution has dual DevOps/FinOps qualities: On one hand, it has workable IaC integrations to automate the actions needed to lower cloud spend and minimize it going forward; On the other hand, it provides cost visibility & analysis that support cloud cost attribution and accountability. 


## How do I make this my own?

If you work with external platform or portal tooling, e.g. Backstage, Port, Crossplane, Cortex etc. – follow the next steps:

1. Check integration catalog for cloud resource management solutions. These might also be classified as provisioning, autoscaling & optimization. 

2. Consider starting with open-source reporting tools like Kubecost to learn about your optimization potential. 

3. Research externally for tools capable of automating the heavy lifting of continuous optimization. Today, these are nearly non-existent in the integration catalogs of platform vendors – because they are considered day-2 capabilities, and most platforms are simply not there. No reason to worry though – autoscaling & co. is a saturated, competitive segment. Once you start a POC, it’s in the vendor’s best interest to develop a plugin or provider for your chosen platform tool. Such a plugin might help put them in front of many other users.

Platforming from scratch? Start off from step 2 above. When you hit step 3, look for the vendor’s GitHub repo, or Terraform module, to create the integration. If you don’t have Dev resources to dedicate, you may request it from the vendor once your POC becomes a paid subscription.

_Special thanks to Artem Lajko and Abby Bangser for their insightful reviews._
