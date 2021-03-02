**Status**: WIP | **Maintainer** : Jennifer Strejevitch | 

## Executive Summary
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/35**

Maintaining applications or infrastructure requires many repetitive actions and checks. As computers are great in doing repetitive tasks and verifying the state of an object, the preferred way to maintain an application of infrastructure should be through code. An operator provides a way to encapsulate the tasks and checks required to manage other objects.

In Kubernetes, an operator provides intelligent, dynamic management capabilities by extending the functionality of the API.

An operator allows for automation of common processes as well as reactive applications that can continually adapt to their environment. This in turn allows for more rapid development with fewer errors, lower mean-time-to-recovery, and increased engineering autonomy.

## Introduction
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/34**

This white paper defines Operators in a wider context than Kubernetes. It describes their characteristics and components, gives an overview of common patterns currently in use and explains how they differ from Kubernetes controllers.

It also dives deep into their capabilities such as backup, recovery and automatic configuration tuning, gives insight into frameworks currently in use, lifecycle management, security risks and use cases.

This paper includes best practices including observability and security, technical implementation and CNCF maintained code samples.

It closes with related work, what additional value they can bring beyond this white paper and the next steps for Operators.

### The goal of this document
The goal of this document is to provide a definition of operators for cloud-native applications in the context of Kubernetes and other container orchestrators.

### Target Audience / Minimum Level of Experience 
This document is intended for application developers, Kubernetes cluster operators and service providers (internal or external) - who are looking to learn about operators and the problems they can solve. It can also help teams already looking at operators to learn when and where to use them to best effect. It presumes basic Kubernetes knowledge such as familiarity with Pods and Deployments.
