**Status**: WIP | **Maintainer** : Jennifer Strejevitch |

## Executive Summary
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/35**

Maintaining application infrastructure requires many repetitive human activities that are devoid of lasting value.
Computers are the preferred method of performing precise tasks, verifying the state of an object and therefore enabling the infrastructure requirements to be codified. An operator provides a way to encapsulate the required activities, checks and statement management of an application.

In Kubernetes, an operator provides intelligent, dynamic management capabilities by extending the functionality of the API.

These operator components allow for the automation of common processes as well as reactive applications that can continually adapt to their environment. This in turn allows for more rapid development with fewer errors, lower mean-time-to-recovery, and increased engineering autonomy.

Given the rising popularity of the operator pattern, it has become incumbent for there to be a reference paper that helps both novice and expert alike to learn from the community endorsed best practices for achieving their goals.
In this document we outline not only the taxonomy of an operator but the recommended configuration, implementation and use cases for an operator application management system.

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
