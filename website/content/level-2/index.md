---
title: Level 2 - Operate
description: The cloud native foundation is established and you are moving to production.
---

## <i class="fas fa-users"></i> People 

### People Overview

Individuals are actively invested in training and skills. The outcome is that small pockets of SMEs and expertise are appearing. DevOps has started to appear with inclusion of cloud skill engineers and developer groups offering platform skills. Cloud Native efforts are also owned by members of leadership.

### Organizational Change

Organizational change is happening. You will define project teams, create agile project groups and have quick feedback/testing loops.

### Teams and Decentralization

We are starting to formalize central services and responsibilities, including the consolidation of tooling, as well as the culling or evaporation of non-cloud native tooling.

### Security

Your team needs to focus on who is responsible for Kubernetes cluster security and how it will be managed. That will require the inclusion of the security team.

### Developer Agility

The team is comfortable with technically challenging problems and how cloud native can help. There is an organizational commitment to decentralisation and automated testing of builds, with automated deployments to some environments.

### Upskilling Developers

Your wider development team is able to operate the fundamentals of Kubernetes including:
- Connecting an operator to the Kubernetes API
- Become comfortable with Kubectl commands
- Understanding how to list and view resources
- Performing basic actions (mechanical actions with limited understanding of how it works)

### CNCF Certifications

Organizations may wish to consider the CKA and CKAD exams around level 2 and 3.

#### Certified Kubernetes Administrator (CKA)

This program provides assurance that CKAs have the skills, knowledge, and competency to perform the responsibilities of Kubernetes administrators.

#### Certified Kubernetes Application Developer (CKAD)

This exam certifies that users can design, build, configure, and expose cloud native applications for Kubernetes.

## <i class="fas fa-cogs"></i> Process

### Process Overview

You’ll focus on production promotion of basic applications. This includes being well established with Git and CI. You are also instituting structured build and deployment processes that exhibit the qualities of a cloud and container native CI/CD system.

### CI/CD

For your application, you will institute structured build and deployment processes that exhibit the qualities of a cloud and container native CI/CD system.

### Change Control

Here you develop a fundamental understanding of the workflow from source control management (scm) to deployment and have access to merge/tag commits in scm to trigger deployments.

### Security

Build security into your CI process including container scanning and configuration scanning.

### Audit and Logs

Spend time defining log aggregation.


## <i class="fas fa-edit"></i> Policy

### Policy Overview
As your services approach production, you have initial policies agreed as standard and these are mostly documented.

### Policy Creation

Define initial resource metrics and start collecting data.

### Compliance

Initial auditing, carried out manually or through simple scripts.

## <i class="fas fa-server"></i> Technology

### Technology Overview

This marks your first step into production. You’ve worked hard to build your foundation in Level 1, and now you are moving to production. You might have started with something relatively small and simple, but this leap to production has certainly required you to address some significant steps. You’ll probably have had to incorporate monitoring and observability into your workloads. You’ll have brought key observability tooling in and started monitoring your clusters for standard metrics such as RAM, CPU etc. While you might be starting to evaluate application tracing, don’t worry about it too much if you have started to gather core metrics. Your focus here is on getting an application running in production and having enough platform resource, observability and operational capability to support it within your organization.

### Infrastructure

Because production is your goal, you’ve built Kubernetes clusters for production with a focus on reliability and security.

### Container and Runtime Management

You’re working in production now. You will experiment with tooling to augment the basics in production to help with security, policy management, workload misconfigurations, resource requests and limits. Key security practices for container hygiene are being incorporated.

### Application Patterns and Refactoring

You're in production, with your first APIs exposed. Consider developing a “microservices first” framework particularly if your first choice is always a microservices approach. If not, consider moving applications suitable for lift and shift or don't migrate the app until later.

### Application Release and Operations

For your initial steps into production, you’ll be using CI or release tooling, kubectl and kustomize to potentially deploy your first smaller applications. It’s really important by now that you develop key skills in Kubernetes configuration.

### Security and Policy

Ensure that your development and operations groups are following good practice with containers, secrets and security. Because you are in production, you will want to ensure that you have encryption as well and authentication and authorization addressed.

### Testing and Issue Detection

Now that you are in production, you’ll be experimenting with tooling to help with security, policy management, workload misconfigurations, resource requests, limits and observability, in your staging or development environment.

## <i class="fas fa-building"></i> Business Outcomes

Cloud native is now established and your technologists are moving to production. While the technical outcome of Level 2 is a fully functional application or group of applications migrated to cloud native tools and practices, the business outcomes are the ability to evaluate the benefits of the migrations. This is also the level that most customers/corporations get to and plateau. This is when a cloud native maturity model shows its true value.

With your established KPIs from Level 1, you will measure success and communicate this to stakeholders.

In the operation phase, you will be focused on moving to production. You’ll have established standards around technology, your people will be operating it and implementing policy and process. Your business outcome will be around production migration. The business leadership of your organization will want to understand what applications are being moved and why. Be able to clearly communicate the plans to your business leaders. Repeatable patterns will also emerge as teams operate in Level 2. These will be applied to your business outcomes so that benefits you see in one migrated application can be applied to another without as much as a heavy lift. These patterns will help streamline operations across your dev, sec and ops teams.

Your KPIs can also include your return on investment ROI, but know that in Level 2, your ROI will be lower than when you reach Level 5. This is because you are investing a lot in acquiring tools, establishing the right team and skill set, whereas in Level 5 you are optimizing.
