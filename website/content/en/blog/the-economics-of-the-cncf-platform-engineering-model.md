---
date: '2023-12-07T21:18:09+01:00'
draft: true
title: 'Platform Engineering Through the Lens of Two-Sided Markets'
author: 'Nagy Viktor'
---

_Disclaimer: The author is employed by GitLab. The article has benefited from constructive feedback from the CNCF community, with special thanks to Abby Bangser, Lou Bichard, and Colin Griffin for their valuable insights._

## TL;DR

Unveiling the parallels between the challenges of Internal Developer Platforms and the dynamics of two-sided markets, this article explores the strategic decision-making process in adopting the CNCF Platform Engineering Maturity Model. The key takeaway emphasizes the criticality of solving the right problems first, triggering a self-sustaining value loop as the platform matures. Additionally, the article sheds light on the challenges associated with switching between platforms and underscores the importance of aligning functionality expectations with market dynamics.

## The Theory of Platforms

In the realm of economics, platforms are often conceptualized as [two or multi-sided markets](https://en.wikipedia.org/wiki/Two-sided_market). While traditional markets involve the interaction of suppliers and consumers, two-sided markets introduce a unique dynamic where the platform itself is a product with its own market. This concept is well exemplified by operating systems and social networks, where the availability of applications influences user preferences, creating a symbiotic relationship. This theory, although present in physical markets, becomes particularly pronounced in digital landscapes due to distinct properties requiring regulatory intervention.

In essence, two or multi-sided markets revolve around platforms, acting as products with users and suppliers evaluating the platform. The quality and quantity of users attract suppliers, and vice versa. In the context of DevOps platforms, analogous to two-sided markets, the economics closely resemble multi-sided markets.

## Application to Platform Engineering

DevOps platforms, specifically Internal Developer Platforms (IDP), operated by platform engineering teams exhibit characteristics akin to multi-sided markets. The challenge lies in overcoming the initial inertia, where the platform's value amplifies with increased usage. This underscores the significance of strategically addressing pertinent issues, recognizing the adoption challenge as a chicken-and-egg dilemma.

The [CNCF Platform White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/#why-platforms) outlines motivations for enterprises investing in platforms, reflecting diverse interests within the organization. Successful platforms must balance these interests, orchestrating adoption across product teams, infrastructure teams, security teams, and management.

## Adopting a Platform

The crux of multi-sided markets is adoption, creating a self-reinforcing cycle. Examining the five aspects of maturity in the [CNCF Platform Engineering Maturity model](https://tag-app-delivery.cncf.io/whitepapers/platform-eng-maturity-model/), the article suggests a holistic approach, intertwining investment and adoption aspects. A pivotal upfront investment and unwavering executive support pave the way for successful platform introduction.

The article introduces strategies to reduce adoption costs, showcasing solutions like [Auto DevOps from GitLab](https://docs.gitlab.com/ee/topics/autodevops/) and [Backstage from Spotify](https://backstage.io/). It underlines the strategic decision of 'Build or Buy' and the evolving nature of the platform market.

## Build a Lot or Buy and Build a Little

Drawing parallels with the evolution of products in markets, the article likens the trajectory of platform engineering from custom solutions to professionally supported products and eventually commodities. It emphasizes the strategic decision of how much to build internally versus leveraging off-the-shelf solutions. The market's maturity dictates this decision, offering either an integrated solution like Auto DevOps or a customizable approach like Backstage.

The strategic bet involves predicting the pace at which the market transitions from custom tools to products and finally to commodities. The article presents this decision as crucial, shaping the direction of platform engineering investments for the next 3-7 years.

## Scoping an Initial Platform

Focusing on the product perspective, the article suggests that the primary goal of an Internal Developer Platform or DevSecOps platform is to onboard engineers and initiate the value loop of a multi-sided market. The recommended initial scope targets the alleviation of significant developer pain points, emphasizing collaboration and simplifying complex solutions.

Proposing a phased approach, the article recommends building a stable and widely used delivery platform before automating project enrollment. This approach, gleaned from interviews with GitLab users and customers, ensures successful platform adoption.

## The Small Print

An often-overlooked aspect of multi-sided markets is the cost of leaving a platform. Drawing parallels with notable platforms like Facebook and Helm, the article highlights the stickiness of even suboptimal solutions once they establish themselves. Migration, while incremental, demands a long-term investment, emphasizing the strategic nature of platform decisions.

## Summary

This article applies the often-studied theory of two-sided markets to internal developer platforms, offering insights into adoption and switching costs. Executive sponsorship, strategic investment, and a focus on application delivery, coupled with project scaffolding, emerge as key factors for successful platform implementation. The strategic decision of building internally versus buying off-the-shelf products shapes the trajectory of platform engineering investments, with an eye on the evolving market dynamics.
