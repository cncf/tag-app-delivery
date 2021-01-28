**Status**: WIP | **Maintainer** : N/A | 

## Executive Summary
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/35**

Maintaining applications or infrastructure requires many repetitive actions and checks. As computers are great in doing repetitive tasks and verifying the state of an object, the preferred way to maintain an application of infrastructure should be through code. An operator provides a way to encapsulate the tasks and checks required to manage other objects.

In Kubernetes, an operator provides intelligent, dynamic management capabilities by extending the functionality of the API.

An operator allows for automation of common processes as well as reactive applications that can continually adapt to their environment. This in turn allows for more rapid development with fewer errors, lower mean-time-to-recovery, and increased engineering autonomy.

## Introduction
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/34**

### The goal of this document
The goal of this document is to provide a definition of operators for cloud-native applications in the context of Kubernetes and other container orchestrators.

### Target Audience / Minimum Level of Experience 
This document is intended for application developers, Kubernetes cluster operators and service providers (internal or external) - who are looking to learn about operators and the problems they can solve. It can also help teams already looking at operators to learn when and where to use them to best effect. It presumes basic Kubernetes knowledge such as familiarity with Pods and Deployments.
