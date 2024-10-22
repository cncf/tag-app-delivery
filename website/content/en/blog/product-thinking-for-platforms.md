---
title:  "Product Thinking for Platforms"
slug: product-thinking-for-platforms
date:   2024-06-13 01:00:00 +0000
author: Dominik Kress, Michael Luskind, David Stenglein
categories:
tags:
- WG Platforms
---


# Product Thinking For Platforms

## Introduction

Are you building platforms your engineers love to use?

KubeCon EU 2024 just wrapped up and while the buzz around AI was omnipresent, there was another topic the cloud native community couldn’t seem to get enough of: platform engineering. It doesn’t matter if you attended the very first CoLocated [Platform Engineering Day](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/co-located-events/platform-engineering-day/#about), listened in on the [Platform Engineering Talks Track](https://events.linuxfoundation.org/kubecon-cloudnativecon-europe/program/schedule/), strolled through the sponsored booth hall or just sat at home checking your Social Media Thread with FOMO.

If we're talking about platform engineering, we of course need to bring up the [CNCF Platform Engineering Maturity Model](https://tag-app-delivery.cncf.io/wgs/platforms/maturity-model/v1/) that helps organizations evaluate the current state of their platform, understand the gaps, and inform the strategy for the future of their platform. One such direction that many high performing organizations share is treating your platform as a product. 

“Nice!”, you say. “Alright then, give me the tools and methodologies to make my platform-as-a-product and then we’re good!”, you might add. But it’s not that easy. While there is a research initiative within the [CNCF Platform Working Group](https://tag-app-delivery.cncf.io/wgs/platforms/) to find out how organizations approach platform-as-a-product, one thing is already clear: It’s not just about a set of tools and methodologies, it’s about a mindset - Product Thinking. 

But now what’s this Product Thinking? And why should you care? Product Thinking is making sure you build the right things without wasting time, resources and money to build something that users don’t care about. That’s why this blog is starting with a look at what Product Thinking is, how you can benefit from it and how it can make your platform into something engineers love to use.

## What Is Product Thinking?

Product Thinking is the process of identifying and prioritizing the problems your customers face and creating value by solving them.

Notice that didn't include solutions or features.

### Solving Problems VS Creating Solutions

In order to have a successful product knowing **why** you are building something is just as important as **what** you build. After all, if you don't know why you are building something, how do you know you are building the right thing? Successful product teams understand this and focus their efforts on understanding user pain points before jumping in with solutions. 

It is all too natural for engineers to jump into solutioning, but this approach has downsides. By jumping straight to solutioning, you cut off exploration of the problem, which could have a larger scope than you realize. The solution you create might not fit user needs and you've just wasted time and money building the wrong thing. Not only have you wasted your own time, but your users still struggle with the same underlying problem. Perhaps they even experience additional pain by being forced to adopt your ill-fitting solution.

Product Thinking helps you become proactive in learning about your users' problems and unearthing new opportunities to improve their experience. It gives you the ability to de-risk your effort by fully understanding the underlying problems and validating your assumptions about your potential solutions before you build.

Learn to love the problem, not the solution. 

### Value For Customers

Customers? What customers?

When you solve a problem for a user, you create value for them. This is at the core of Product Thinking and it's why great product teams obsess over their customers. If you take the time to learn as much as possible about what your users are trying to accomplish and how they go about it, your problem of figuring out what to build goes away.

You could study your users from afar and try to intuit what their needs are, but that's entirely unnecessary. You can have all of the insight you need directly from users. Go out and talk to them! It's good to stay focused and stick to discovering problems rather than solutioning (users are just as guilty of solutioning for their own problems). The first step is to create the room to learn. By stepping back and listening, you develop empathy and see what your users are facing. With this approach, you have lots of valuable information on real problems and can move confidently to creating solutions. These solutions can be smaller and more focused, creating faster feedback loops.


### Continuous Approach

The Product Mindset differs from the traditional project-oriented management approach. While a project is usually focused around larger phases of requirements gathering, implementation and deployment, Product Thinking is meant to operate continuously. When using Product Thinking, the goal is to stay close to the customer, figure out their needs and deliver value to them in a continuous cycle. By engaging with customers continuously you significantly raise the odds of delivering value for them. And when you build a track record of delivering value, you build trust with customers and they keep coming back to you with new opportunities. Contrast this with the project oriented approach where a large project that take huge amounts of time and money to implement misses the mark with the underlying need. In this case everyone usually wants to forget this happened and you end up with another partially implemented solution that becomes a drag.

This mindset shift from project to product is essential for creating successful platforms.


## How Does Product Thinking Fit With platforms?

Modern platforms and platform engineering are focused on reducing cognitive load for engineers and allowing them to focus on creating business value. It only makes sense to treat the platform as a product that becomes part of the value chain of the business. 

Platforms are for building things and running them. A platform user needs to be able to do both.


### Find The Platform User And Value

If we accept this premise (and we'll get into why you would want to below) then we need to figure out how to create value for our users. As we mentioned above, our users are creating value for the business and anything we can do to aid in that process will be of value to them.

This is where the rubber hits the road with Product Thinking and platform engineering. 

You have two choices when you build platforms for people to use: you can be focused on their problems or your own. This might seem counter-intuitive. Of course when you build a platform it is for other people to use, right? Well, maybe. In the infrastructure world, we frequently build platforms for ourselves to deal with inbound requests from our users. The approach to automation is a good example. Much traditional automation is focused on dealing with either day to day infrastructure work or automating our response to inbound user requests. 

If we turn this around and start asking how we create value for our users, our approach to work is very different. Rather than figuring out how to deal with requests from users, we start asking why to get to the core of their problem. Rather than building tools to make our own work easier, we try to understand how our users go about their work and find ways to multiply their effectiveness. Instead of assuming we know what users need, we take time to listen and make sure we are building solutions to actual problems. 

Using Product Thinking and focusing on value for users makes it easy for us to build the right thing and cements our contribution to overall company value.

### Importance of building the right thing for platforms 

So we mentioned above that we'd get to why it is important to use Product Thinking to create value for users by focusing on their problems (rather than building solutions first).

It allows you to build the right thing.

That seems important, but it might not be clear just how important it is vs the alternative.

Consider this: every minute spent on building solutions that don't address genuine user needs represents not only a squandered opportunity but also a drain on valuable time and resources. 

So you've wasted time and money building the wrong thing. That's bad.

It gets worse: All throughout the time you spent building the wrong thing, your users have had the same core problem, something preventing them from creating value for the business. This miss results in a huge opportunity cost between the wasted time and money and reduced effectiveness in creating revenue.

And worse: That thing you just built? That doesn't actually solve the right need? You're probably not going to just throw it away. Now you're stuck maintaining something that still has relatively little value, but can't be just left to rot lest it become a liability. Instead, you'll be motivated to figure out how to fit a square peg in a round hole.

And even worse: Building the wrong thing can be enough of a drag that users start figuring out ways to build around you (shadow IT). So not only are you wasting money, your users are wasting time and money trying to solve their own problems rather than generating value.


So what happens if we build the right thing?

The first good thing is that we've not wasted a lot of time and energy building the wrong thing (or several wrong things). This is a big boost in the platform teams effectiveness, drastically shortening the time create value at a lower cost.

Even better, building the right thing has the effect we set out to create of making our users more effective at creating value for the business. The platform becomes a force multiplier and the value to users and therefore the business is much more apparent.

Better still, by building the right thing, you minimize what you need to build and manage over time; the things you do build take more into consideration, becoming an asset rather than a liability over time.

And the best part is that you get eager adoption from users. After all, you've made the effort to solve their pain points. This builds trust with your users and by using Product Thinking and keeping the right focus, continuously increase effectiveness of the whole organization.

So which path would you take: a virtuous cycle of continuous improvement and effectiveness or a spiral of misery and despair?


## Conclusion

Using Product Thinking and building platforms your engineers love to use can have powerful effects on an organization.

The first step on this path is to understand Product Thinking itself:
- Problem solving vs creating solutions: asking why
- Understanding value for customers: contribute to value creation
- Continuous process: a product keeps evolving to meet user needs

Once we understand Product Thinking, we can apply it to platforms:
- Value for platform users: focus on barriers to creating value and enhancing flow
- Choice of focus: build platforms to solve user problems, not your own
- Building the right thing: platforms can have a huge impact on an organization, but they can also lose a lot of that impact if you don't build the right thing


We hope we've made a good case for the important of using Product Thinking and interacting with your users when building platforms. But how do you actually adopt these practices? We have a series of blogs planned to help teams get started with these methods. 

You can get started right now, though. It's simple: talk to your users, listen to them and start figuring out their problems.

If you'd like to learn more about the Platforms Working Group, here are some resources:
- [Platforms WG Home Page](https://tag-app-delivery.cncf.io/wgs/platforms/) 
- [CNCF Slack Signup](https://communityinviter.com/apps/cloud-native/cncf)
- [#wg-platforms channel](https://cloud-native.slack.com/archives/C020RHD43BP)

Also, consider participating in our Platform As A Product [research effort](https://tag-app-delivery.cncf.io/blog/call-participation-paap-research/).

