---
title: "Level 1 - Build"
description: >
   You have a baseline cloud native implementation in place and are in pre-production.
---

## <i class="fas fa-users"></i> People 

### People Overview

Cloud native framework is driving your business and technical goals. You and your team are new to the technology, however do have some basic technical understanding and some pre-existing qualifications. Your business leaders understand the benefits of cloud native.

### Organizational Change

As you transform, you will have limited organizational support and will be in a proof of concept (POC) phase or be focused on only one application.

### Teams and Decentralization

Teams are exploring cloud native tooling, primarily Kubernetes. However, this is not just for the sake of exploring, but rather it is with the goal of reaching production. All work is generally taking place within a formal MVP program.

### Security

The people implementing cloud native will need to focus on security. Default security settings will be used and will work in pre-production. You’ll spend time identifying your open source security posture and conduct a security POC of the pre-production environment so that both Dev, Ops and security understands what is required in cloud native workloads.

### Developer Agility

Your organization is committed to decentralization and will employ “teams of teams”. This is an essential requirement of your people. Across the different levels of maturity, people will be implementing tools for automated testing, metrics and feedback. 

Developers may have learned about Agile Manifesto and adopted Scrum Framework without necessarily including Operations. Developers may attempt to resolve external dependencies themselves, slowing down feedback, with incomplete features per sprint.

### Upskilling Developers

The maturity of your people will include upskilling the development team. 

Your application team will be trained in 12 factor applications, microservice and cloud native patterns. You will also require developers who are quite comfortable with cloud native concepts and tooling such as kubectl in order to bootstrap your development team.

### CNCF Certifications

Cloud Native Computing Foundation (CNCF) serves as the vendor-neutral home for many of the fastest-growing open source projects, including Kubernetes, Prometheus, and Envoy.

In order for you to build a sustainable ecosystems for cloud native infrastructure is it important to have your team invest in the CNCF Certifications. It is unlikely you’ll achieve certifications in level 1. 

## <i class="fas fa-cogs"></i> Process

### Process Overview

You will map application requirements, both functional (application features and code) and non-functional, such as performance, capacity, and availability, and define how your organization will scale. Feedback will be manual such as by Slack, email, and phone, and you’ll also remediate manually also. You will start to implement repeatability by defining your Git workflow. Platform and technology lifecycle and updates, particularly security updates, need to be applied on a regular basis as vulnerable systems pose specific risks. You will likely be applying these updates by hand on an adhoc basis, or using update systems included in distributions.

### CI/CD

Central to your cloud native transformation is the adoption of CI/CD. CI/CD helps you build, test and deploy applications based on modern software development practices. Your CI/CD process will mature over time.

If you do CI/CD, you need to transform this into your cloud native environment. That includes taking existing best practices and building upon them.

### Change Control

Change control will need to be implemented to control your deployments.
You have no change control process in place. Instead changes are performed based on ad-hoc requests.

### Security

Incorporating security tooling and practices into your cloud native environment, whether through a practice or a process, as early as possible is crucial to keeping your cloud native environment secure. We often use the term ‘shift left’ to refer to bringing a practice, whether relating to testing or security, into a process as early as possible. Security is covered in all sections of the Cloud Native Maturity Model and each section with People, Process, Policy and Technology can be combined to support the security team as they seek to mature the organization’s cloud native security.

Take action: your security journey starts here. Consider security in all aspects of implementation and make it a first class citizen.
 
### Audit and Logs

Your process will include logging and auditing. This can be based on internal requirements or support your compliance mandates.

Manual log scraping is likely ad-hoc and you may not have a central logging point or SIEM.

## <i class="fas fa-edit"></i> Policy

### Policy Overview

We recognize policy adoption is a gradient. Every organization has a different risk appetite. Use this document as a guide to how you can define and enforce policy. By level 5, you will have achieved full policy maturity, however your mileage may vary.

You will have a limited set of documented policies in place to support services you're building in the cloud.

### Policy Creation

You will need to translate your organization’s policies and compliance requirements to your cloud native environment.

Spend time understanding your application's functional and architectural requirements.

### Compliance

You will need policies in place to achieve compliance especially in highly regulated industries. For compliance, there is a gradient of what you will achieve.

Spend time understanding your compliance requirements: CIS, NIST, PCI for example. Design SLOs and priorities for compliance. This will take time and may not be a pre-production requirement, but will increase as you move to production.

## <i class="fas fa-server"></i> Technology

### Technology Overview

You’ll have your initial experimentation and adoption of Kubernetes. You’ll start with relatively basic tools and technology. You’ll assess your existing toolset to see how they fit within the new landscape (what plays well with cloud native, and what doesn’t?). You’ll have limited automation, but don’t worry, it’s coming! Your focus is on getting the baseline technology implemented, and you won’t be in production yet.

### Infrastructure

You are building your cloud infrastructure either on-prem or off. It will pay dividends to consider early your supporting technology such as your network, firewalls and IAM, access controls and policies (and if you need to change them). Many topics will come out of your initial experimentation with Kubernetes, so ensure you keep track of these - they are the ‘breadcrumbs’ you will follow as you move towards cloud native. This will include RBAC policies, load balancer and/or ingress configuration, cluster dashboards, privileged access (or lack thereof!) and container logging. Your aim is to move away from ‘pets’ to ‘livestock’ so you invest in declarative solutions for your Infrastructure as a Service with Infrastructure as Code (IaC) tooling. If you do not have a consolidated DevOps practice at this level, bring your future operations team in to build familiarity.

### Container and Runtime Management

Initially you’ll want to focus on just building containers. One of your first steps will be to add container builds to your CI for your application. You’ll also want to adopt a container registry for your images and you’ll need to consider versioning and tagging so that you can ensure you know exactly what code is in use.

### Application Patterns and Refactoring

Start with a canonical microservice application if you can and confirm that it runs and that people are familiar with it. Attempt to start with a microservice application on your cloud native journey if you can. You can try an existing or monolithic application if this makes sense, as this will flush out tooling and dependencies you'll have for your journey to cloud native, such as kubectl, network connectivity and other topics.

Your business needs to review microservice patterns and architecture and look to understand the specifics for your applications. Non-functional requirements such as latency, resilience, scaling and third party tooling should definitely be considered. If you're transforming a monolith, this may impose significant redesign on the application as existing needs may not have the technical resources available. Consider your state management, as refactoring a monolith may require effort here. Try to ensure that the knowledge stays with the code, so make sure an existing developer familiar with the code participates in its migration to the cloud. Minimize divergence between cloud and your existing estate. This exercise will ensure all understand that it's a commitment to move to cloud native.

### Application Release and Operations

Managing a cluster with Infrastructure as Code (IaC) is different to managing application release and deployment, however many of the same techniques and tools will be common to both.
When starting with Kubernetes, it is important that you start out with as much hands-on experience as possible. Initially you’ll be doing ad-hoc deployments with kubectl and kustomize.

### Security and Policy

Start building your secured CI-CD pipeline if you don’t have one already and don’t forget that what you are doing today with VMs will end up quite different in the future.

### Testing and Issue Detection

When just starting out, much of your testing will be conducted manually on your business application that you’ve identified as your initial production candidate. With Kubernetes you’ll be focussing on your general network connectivity, and ensuring you’re able to deploy your applications. You will have smoke tests, and UAT testing.

## <i class="fas fa-building"></i> Business Outcomes

Level 1 of the Cloud Native Maturity Model is where your team has a baseline implementation in place and you are in pre-production. Here you will have completed a successful POC. Based on the POC, you should have initial findings on how cloud native will help improve your app. In a dev environment, you could, for example, have seen that:
- An app is using less resources (cost savings / more efficient use)
- A new feature shipped faster (faster time to market and thus increased revenue)
- There was no downtime (improved reliability for customers)
- Improved business continuity thanks to resilient cloud architectures

These are just examples, they are not a guarantee based on your environment as results may vary.

In this phase, you will determine how you’ll measure (your initial KPIs) the success of your cloud native journey; and just as important, how you will demonstrate it to stakeholders. This is a major outcome of Level 1 as the entire success of the journey should be mapped to this measurement. Remember it won't be immediate on day 1. Some quantitative and qualitative example KPIs may include:
- Reduced spend on app infrastructure by 25% by optimizing for cost
- Dev cost lowered by 10%
- Reduced team focus on app infrastructure by 15% by automating as much as possible
- Increased security for the application by automating CVE identification in containers
- Improve compliance as you can restrict and track access to the application; demonstrate compliance with SOC 2
- Accelerated development life cycles as you implement CI/CD pipelines shipping 10% more features per quarter
- Migrate plan - this will vary depending on your organization, but you should have a migration plan in place. Whether that’s to migrate one application first, or several, you should have this established.
- Improved customer experience measured by increased performance scores
- Elimination of information silos: departments no longer isolated; unique, integrated ecosystem in place.
- Alignment of business and IT goals: everyone is involved and aware, so that resources are better addressed to meet those goals efficiently.
- Increased internal communication: cross-pollination offers new perspectives with shared knowledge.

In this phase, it’s important that the business outcomes are examined and explained to business stakeholders. It should be a discussion with engineering leadership, the application owner (finance, marketing, etc), the CEO, and even the board. Without these discussions and alignment, maturing to the next phases will come with little appreciation and possibly even skepticism.
