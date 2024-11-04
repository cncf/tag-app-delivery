---
title: "Platform As A Product: Getting Into The Mindset With User Stories"
slug: paap-mindset-user-stories
date: 2024-10-30 15:00:00
author: David Stenglein
categories:
- Article
tags:
- WG Platforms
- Platform As A Product
---


When you create user stories for your platform, do they all start with "As a platform engineer ..."? Switching up how you write stories can engage Product Thinking and give you much happier customers!

## The Traditional Approach

Historically, systems people (including everyone from sysadmins through SREs, platform engineers, etc) have had a tough time with creating agile user stories. They frequently go through contortions to describe the work as internal (making our work feel user-oriented can be tough). 

These contortions are a result of having a "behind-the-scenes" mentality which creates an us-versus-them approach to things and a disconnect with the user as a customer you are building for. Instead systems people (aka Platform Engineers) have typically written stories from their own perspective.

Here are a couple of examples:
> As a platform engineer, I want to create a Terraform module for DNS to make it easier to manage DNS with local standards.

or

> As a platform engineer, I want to deploy Loki so that users can see logs for their applications.

The problem with writing user stories this way is that it is task oriented rather than addressing user needs. As we start to build platforms for other people to use, we need to get out of our usual pattern of building tools that accelerate our own style of work and think about how others will use these tools, preferably self-service.

Let's see what we can do about that.

## Changing Perspectives

Take the first example. What would a customer need from our platform that would relate to DNS?

This could be rewritten this way: 

> As an application developer, I need to publish my application at a well-known address that I can share with users.

This is interesting. The way we originally wrote it, we were trying to solve an issue with making DNS easier to manage through terraform. Do developers ever ask for new terraform modules? When we change the perspective, we can see that the problem the developer is trying to solve is making their app available in a well known place. Our original story is looking more like a subtask for the real user need. There are probably other things to take care of like TLS certificates, too.

In our second example with Loki, what does the customer need from the platform? Maybe, after sitting down with the customer and observing their day to day work, you might rewrite the story as:

> As an application developer, I need to be able to respond to outages in my application by being able to quickly pinpoint the root cause and then understand if the resulting fix is working correctly.

Okay, this one is more than just a story, much more. This is sounding like a whole epic! The user needs observability tooling to respond to outages and  while Loki may be part of the solution, logs are just a component of an observability strategy alongside metrics or tracing. Maybe you already have a logging solution and Loki seemed like the next obvious thing to work on. But if you put yourself in the customer's shoes, you might start to see new priorities that will directly address their needs.

## Getting Started

In order to get user stories that are focused on, well, users, we need to get into a product mindset. This involves working to understand the customer's needs and only then working on solutions that address those needs.

The easiest way to get into the mindset and gain that understanding is to talk to users and really _listen_.

Sure, there are many product management practices you can use to get customer insight, but talking to them and reframing how you write user stories is a great first step. By challenging ourselves to make our work relevant to users, it pushes us into good behaviors of researching user needs and listening.

It's a lot like architecture and unit tests. Good unit testing practices naturally push engineers into good architecture patterns and reframing user stories can do the same for platform engineering.

So the next time you start a story with "As a platform engineer...", stop and think about what you're doing and why. Then go out and get the clarity you need to confidently build the right thing.

Originally posted at: https://www.missingmass.io/blog/platform-as-a-product-getting-into-the-mindset-with-user-stories

**Disclaimer**: This blog post represents the viewpoint of its author(s) and does not necessarily reflect an official position or perspective of the TAG or any subsidiary working group. See [this blog](https://tag-app-delivery.cncf.io/contribute/community-post-guidelines/) and contributions guidelines for more information on how you too can contribute.