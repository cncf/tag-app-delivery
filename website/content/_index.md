---
title: "Cloud Native Maturity Model"
---



![woman at a conference](/images/woman-at-conference.jpg)

It’s no secret the world has gone cloud native! The authors of this body of work have seen many organizations start their cloud native journey with no real framework on how to adopt these new applications and platforms. The authors want to provide a framework for success.

The intent of this model is to help you move from inception through to full adoption of cloud native technologies using the CNCF landscape to achieve the full benefits of running scalable applications in modern, dynamic environments in public and hybrid clouds.

## Target audience

The main target for this model is broad and encompasses the following groups:

* Businesses that are embarking or starting down the path of digital transformation
* Those who want to navigate the massive CNCF landscape to hone in on a framework model you can implement and trust
* Open source and CNCF projects and practitioners wishing to use or contribute to the model
* Leadership teams looking to understand the benefits of cloud native, scope of effort, and level of investment
* Technologists wishing to get started with moving towards cloud native technologies who are keen to understand in more detail the journey ahead of them, as well as have further areas for investigation highlighted

## How the model is divided up

Developing a cloud native maturity is not just a technology journey, but one which is influenced by four major areas:

1. People - How do we work, what skills do we require, what does our organization look like as we move through this process, and how do we weave security into how people work?
2. Process - What processes do we need, what technology is required and how do we map workflows and CI/CD using infrastructure as code (IaC) and how do we shift security as "far left" as possible?.
3. Policy - What internal and external policies are required to achieve security and compliance mandates? Do these policies reflect your business’s operating environment?
4. Technology - What technology is required for you to deliver on the benefits of cloud native and support people, processes and policy as well as the technology for CI/CD, adoption of GitOps, observability, security, storage, networking, etc.
5. Business outcomes - What can the business expect to achieve from cloud native? How are you going to communicate the benefits to the CXO and/or business leadership?

## But what if we don’t fit this model…

Relax! No project, organization or person is expected to match all of the details contained within the model, perfectly. It’s deliberately designed to cover many different scenarios; everything from startups to Fortune 100 companies. Take what is most relevant to you and your situation, and if this helps inspire you in (or indeed account for, but then rule out) any items or areas, then we consider this to be a success for you!

*The aim of this model is not to be overly prescriptive, but rather to be a tool to help guide you on your journey. Cloud native transformation is not an exact science, but rather lives within your project, your organization, and of course takes place in a specific time and place.*

## Prerequisites for the Cloud Native Maturity Model

The first, and arguably most important, thing to do when adopting cloud native is to outline your business and technology goals, particularly what your business expects to gain from the exercise.

Few organizations start out with an entirely blank slate (often known as a greenfield).  You may have something like the following:

* Your organization may range in age from a few months, years, decades or even longer. And may have a collection of technical debt.
* You may have a considerable application, platform and infrastructure estate.
* You may even have started a migration to cloud service providers, perhaps adopting a ‘lift and shift’ approach with your existing estate.

The most important thing you should have is a clear idea of the business outcomes you expect to achieve. These will be your ‘north star’, helping guide your decision making process.

## When is the right time

You may be ready to start your cloud native journey if you meet the following criteria:

### People

* You have significant separation between development and operations, with a clear staff delineation between infrastructure, cloud, application operations and development.
* You have traditionally split your operations and infrastructure divisions and your application development departments. This may have been enforced by regulatory requirements.
* This split may have worked well for you, and indeed may be mandated. But you may be finding additional challenges as much of your platforms become code and application oriented. You may find you require skills in your platform area that have traditionally belonged within your application area.

### Process

* Your application deployments may be done manually in many cases, or your release processes may take a very long time to complete, often with multiple attempts.
* You may support multiple distributions of the same software and have trouble upgrading or evaluating without significant down-time.

### Policy

* Policy may be in the form of conventions and rules that are located external to the application and its platform, and are not enforced natively within your applications and runtime environment.
* Policies might be disparate and built in silos; defense in depth parity might be more of an accident than deliberate.

### Technology

* You’ll likely have VM’s on demand.
* Some automation scattered around.
* You will have baseline security components such as SIEM, RBAC concepts, and a directory of some type.
* You have some software packaging, but this could be inconsistent.
* You’ll have perimeter security and perhaps some course network zoning at layers 1-4, but you may feel some anxiety and security practices.
* Your experience with encryption may vary - you might have some certificate authorities for example, but they may not be used extensively, with a high barrier to entry for many.
* Your applications may rely on infrastructure solutions for high availability, which in turn may be more costly than you’d like
* Your server estate could range from single physical or virtual servers with low levels of availability, through to highly available clusters. Scaling could be a real challenge and may require considerable investment in money, time and planning.
* You may have started to dip your toe into a 'Everything as Code' model. i.e. started to script your infrastructure with Terraform.

![man at a conference](/images/man-at-conference.jpg)

### Business Outcomes

* Your business is growing and needs the ability to scale to meet demand.
* Your business needs to improve and/or deliver an exceptional customer experience.
* Your business needs to get features to market faster.

## The Cloud Native Maturity Model Journey

There are five stages within the cloud native maturity model. While you may be in stage five for one application, at the same time, you may be at stage 2 for another. Keep that in mind as you identify your stage of maturity.

* **[Level 1 - Build](/level-1/)**  
You have a baseline cloud native implementation in place and are in pre-production.

* **[Level 2 - Operate](/level-2/)**  
The cloud native foundation is established and you are moving to production.

* **[Level 3 - Scale](/level-3/)**  
Your competency is growing and you are defining processes for scale.

* **[Level 4 - Improve](/level-4/)**  
You are improving security, policy and governance across your environment.

* **[Level 5 - Optimize](/level-5/)**  
You are revisiting decisions made earlier and monitoring applications and infrastructure for optimization.

In each of the following sections, we will highlight core concepts and discuss what this means in each stage of your maturity across people, process, policy and technology.

We welcome feedback from the community on the Cloud Native Maturity Model!

## Position on Included Technologies
The Cloud Native Maturity model includes references to only CNCF graduated or incubating projects. The Maturity Model’s default position on CNCF sandbox projects will be to exclude unless referenced in later stages of maturity (i.e. users that have achieved level 4 or 5). It does not and will not include any reference to commercial software. 

