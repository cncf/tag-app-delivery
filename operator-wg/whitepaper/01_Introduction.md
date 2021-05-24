**Status**: WIP | **Maintainer** : Jennifer Strejevitch |

## Executive Summary
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/35**

Maintaining application infrastructure requires many repetitive human activities that are devoid of lasting value.    
Scripts and jobs are common methods of performing precise tasks, verifying the state of an object, and therefore enabling the infrastructure requirements to be codified. An Operator provides a way to encapsulate the required activities, checks, and state management of an application.

In Kubernetes for instance, an operator provides intelligent and dynamic management capabilities by extending the functionality of the Kubernetes API.

Operator components enable the automation of common processes as well as reactive applications that can continually adapt to their environment. This in turn allows for more rapid development with fewer errors, lower mean-time-to-recovery, and increased engineering autonomy.

Given the rising popularity of the Operator pattern, it has become essential for there to be a reference paper that helps both novice and expert alike to learn from the community-endorsed best practices to achieve their goals.    
In this document, we outline not only the taxonomy of an operator but the recommended configuration, implementation, and use cases for an operator application management system.

## Introduction
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/34**

This white paper defines Operators in a wider context than Kubernetes; however, we will often use examples in the Kubernetes ecosystem to help describe the characteristics, components, and common patterns currently in use.

It also dives deep into the capabilities of Operators such as backup, recovery and automatic configuration tuning, gives insight into frameworks currently in use, lifecycle management, security risks and use cases.

This paper includes best practices including observability and security, technical implementation and CNCF maintained code samples.

It closes with related work, what additional value Operators can bring beyond this white paper and the next steps for Operators.

### The goal of this document
The goal of this document is to define operators for cloud-native applications in the context of Kubernetes and other container orchestrators.

### Target Audience / Minimum Level of Experience
This document is intended for application developers, Kubernetes cluster operators and service providers (internal or external) - who are looking to learn about Operators and the problems they can solve. It can also help teams already looking at Operators to learn when and where to use them to best effect. It presumes basic knowledge of Kubernetes such as familiarity with Pods and Deployments.
