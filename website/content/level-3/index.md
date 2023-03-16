---
title: Level 3 - Scale
description: Your competency is growing and you are defining processes for scale.
---

## <i class="fas fa-users"></i> People 

### People Overview

The team’s competency is growing and there is commitment from Dev, Ops and security. You are formalizing expertise around a cloud native center of excellence. Cloud Native becomes a first-class citizen for strategy.

### Organizational Change

As your people’s competency grows, the organization structure is now in place to support best practices. You will have formalized responsibilities. A common pattern used for this structure often embraces agile and scrum.

### Teams and Decentralization

You’re really starting to see a high degree of centralisation, with clear and understood responsibilities. There may however be a decrease in velocity and chokepoints in the process. Things may start to slow down.

### Security

Your risk tolerance will impact at what level you are focused on cloud native security training so you are actively skilling people.

### Developer Agility

Your people have implemented continuous delivery for all environments, including for complex releases and with built-in compliance testing. The ops team is now integrated into cross-functional teams, though individuals may not necessarily be able to do all functions.

### Upskilling Developers

Implement a repeatable cycle of troubleshooting so changes and iterations are done quickly.

### CNCF Certifications

Organizations may wish to consider the CKA and CKAD exams around level 2 and 3.

#### Certified Kubernetes Administrator (CKA)

This program provides assurance that CKAs have the skills, knowledge, and competency to perform the responsibilities of Kubernetes administrators.

#### Certified Kubernetes Application Developer (CKAD)

This exam certifies that users can design, build, configure, and expose cloud native applications for Kubernetes.

## <i class="fas fa-cogs"></i> Process

### Process Overview

You will implement standardization across the organization with the benefit of improving onboarding and expanding your cloud native footprint and awareness. You will create a feedback loop. You will invest in repeatability. Do you have the tools in place that are accessible to everyone? Do you have Git services? Have you implemented workspace collaboration to save time, labor or avoid duplication? Finally, what is your process for measuring resource usage? In level three, you should be measuring your container usage, CPU and memory (runtime and uptime). Automation and processes associated with software release will also be extended to platforms. Lifecycle operations such as upgrades and patching, particularly CVEs and critical updates will benefit from further automation and the introduction of Infrastructure-as-code technologies.

### CI/CD

You are implementing a center of excellence around your CI/CD process.

### Change Control

Your code quality is improving as measured with automated tooling and you are seeing CI and test success frequently.

### Security

Implement automatic continuous scanning to flag misconfigurations or security issues.

### Audit and Logs

Start to audit and implement initial alerts. Filter noise.

## <i class="fas fa-edit"></i> Policy

### Policy Overview

You will implement policy-as-code and build this into your CI pipeline.

### Policy Creation

Create policies based on metrics refined around security, efficiency and reliability.

### Compliance

Policy compliance and auditing carried out through automated means on Kubernetes. This will likely include initial development of policy-as-code.

## <i class="fas fa-server"></i> Technology

### Technology Overview

Here you start to scale. Your suite of tools is more standardized. You're getting your release tooling, secrets management and policy tooling in place. You’re also starting to get a level of buy-in across your organization, which is helping to propel you forward. This is where you will be running the largest number of tools as you will be in the thick of evaluating, implementing, and running in production.

### Infrastructure

As part of building confidence in your cloud infrastructure, you need to gain visibility into what your infrastructure is doing. Developing your monitoring, alerting and resource usage capabilities is going to be your focus. An important consideration here is that where previously you may have considered machine-specific properties such as CPU, RAM etc, you’ll also want to factor in cluster resource metrics also. Additionally, you’ll replace components when they fail rather than spending time remediating issues in production. This builds on Level 2. Furthermore, you may also look to manage infrastructure with Kubernetes like you would software.

### Container and Runtime Management

Whereas in Level 2 you’ve been experimenting, in Level 3, as you increase your workload, and as you scale, you need consistent tooling across clusters to gain continuous visibility into your Kubernetes clusters. This should include automatic scanning and having runtime observability of what is occurring within your containers and your cluster. CNCF projects are good options here. You will have alerting and dashboards in place.

### Application Patterns and Refactoring

Culturally, your organization has started to think about services rather than “servers”. Microservices are embraced within the organization and are now used by default where appropriate.

### Application Release and Operations

Because consistency is important, you may be starting to write Helm Charts for your application releases. You may also be starting to take your first steps into GitOps with Flux and Argo, introducing controllers to manage your release and operations.

### Security and Policy

It’s now time to step up and automate your deployment guardrails and security best practices with policy as code. Determine your strategy for enforcement. Begin adopting third party benchmarks and standards where relevant. Consider also adopting anomaly and threat detection technologies.

### Testing and Issue Detection

On the basis of your experiments in the previous level, you’ll be implementing this in production, and including good alerting and good dashboards, building out your observability capabilities.

## <i class="fas fa-building"></i> Business Outcomes

In Level 3, your competency is growing and you are scaling. Up to this point, your teams have been focusing on learning cloud native. In this stage, your business outcomes are dependent on your team’s experience. As the team builds confidence, their competency around security, efficiency and reliability grows and they will implement defined processes for scale. All of these will impact your services and applications as the team improves. Your business should start to notice operations are more scalable and if not you will need to improve lines of communication to demonstrate this scale, or review the actual scaling results, so they can be optimized further.

You will have safeguarded your application or service from a single point of failure or disappointing performance in Level 3.

Monitoring is implemented. This will help the business get reports on what’s working and what isn't working. While the monitoring may be very specific, it will also provide insights into resource utilization to control costs and performance to ensure availability.

Finally, you should be observing the flexibility and scalability of cloud native by comparing old vs. new:

- Deploying a server takes minutes with Infrastructure as Code instead of days. Business translation: faster time to market.
- Monitoring for security attacks. Business translation: less risk, stolen data.
- Observability: Logging, metrics and tracing. Business translation: quicker responsiveness to changes in application behavior or business demand. Better customer experience and reduction in lost sales due to service degradation.
- Improved Reusability: containers and microservices make it easier to reuse components already available from previous projects. Business translation: 1. guarantee of brand image consistency and standardized functionalities throughout the multiple apps; 2. a lower learning curve for customers using those apps.

