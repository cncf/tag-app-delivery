## Finding the right solution

The previous chapter describes a use case for an operator that was one of the first operators ever. With no claim
of completeness, this chapter deals with some best practice when writing
own Operators, based on our own experience or described by the
community. However, without clear knowledge of the actual state and
without clear ideas of what we want to achieve, we also need some
methods and techniques specifying what our Operator should do.
Therefore, we will also have to deal with some aspects of requirement
engineering.

### Requirement analysis

A key promise of Kubernetes is that it enables automation of operational
tasks to deploy, scale, and manage containerized applications across
multiple environments with no (or minimal) human intervention. In
Kubernetes, stateless cloud-native applications are well suited for
horizontal scaling, automated self-healing restarts, or progressive
rollout of new containers. However, stateful applications with complex
components running in clustered or distributed environments are not
always well suited for this type of container-based infrastructure. They
still require human interaction when it comes to persistence, upgrades,
or high availability to remain in a stable state.

True, Kubernetes solves these issues in a novel way by creating and
managing custom applications using Operators. However, and here is the
first question: as a developer, do you really know how this type of
application works and interacts both internally and externally? How does
the day-to-day IT operations work. How is the application backed up
(including recovery). What steps are necessary in case of failovers or
outages, are there any dependencies between the software components?

It is therefore strongly recommended that a comprehensive requirement
analysis is needed to determine the requirements or conditions of an
Operator. Requirement analysis is critical to the success or failure of
Operators. All requirements should be documented, measurable, testable,
traceable, related to identified requirements, and defined at a level of
detail sufficient for system design.

Best practice:

1.  Do not assume to know what is needed.

2.  Study existing documentation of your application, interview
    responsible system administrators and other stakeholders (if
    necessary), get a list of possible system check activities, Business
    and SLA-relevant KPI\'s and compare them with existing incident
    reports or bug tracking lists.

3.  Describe a concrete scenario (e.g., application failover) in detail
    along the lines of "who does what, when, how, and why".

4.  Describe what an Operator needs to know to run the previous scenario
    independently, keeping the application in a stable and productive
    state.

### Custom or third-party Operator

Now that we know that we need an Operator and what the requirements are,
we can turn our attention to the question where do we get a Kubernetes
Operator which meets best our requirements?

Finding the right Kubernetes Operator can be a challenge. On the one
hand, you need to find something that fits with the requirements you
have collected. On the other hand, the Operator needs to be regularly
updated and actively supported by the vendor.

In short, to get an Operator, you have three choices:

(1) You have a database and need an Operator? Consult the website of the
    vendor.

(2) You can search for a public (or private) registry that offer
    available Kubernetes Operators. For example, \[1\] provides a
    platform for publishing and sharing Operators in a way that
    simplifies distribution. The platform makes it easier to find
    supported services and basic documentation. It also identifies
    active Operator communities and vendor-supported initiatives.

(3) Write your own Operator, either from scratch or using a suitable
    framework.

Operators are application specific and their functionality ranges from a
simple installation script to sophisticated logic that handles upgrades,
backups and failures. It takes time and effort to find the right
Operator in a public registry, at the cost of oversized or missing
functionality. In contrast, when writing a custom Operator, there are no
limits to the functionality developers want or need to implement, at the
cost of development and maintenance.

### Use the right tool

After completing and having a complete requirements analysis and
deciding to write a custom Kubernetes Operator, the next question is
which tools developers should use. The article by \[2\] discusses
different approaches to writing Operators and lists the pros and cons of
each solution. The article focuses on one Operator as an example and
uses various techniques and tools. In detail, the author describes the
following tools:

\(a\) Operator SDK (Helm, Go, Ansible).

\(b\) Operator framework KOPF (Python)

\(c\) Bare programming language (Java)

As mentioned earlier, this article not only describes the individual
tools, but also compares their approaches. The author demonstrates that
the imperative programming approaches require more time, work and
caution during development. In return, they give developers the
flexibility to program any kind of logic that is needed. In contrast,
the declarative approaches (Helm Chart, Ansible) allow the
implementation of Operators in a very simple form, which is precise and
human-readable.

Best practices of \[2\] are:

1.  If you **already have a Helm chart** for your software and you do
    not need any complex capability levels =\> Operator SDK: Helm

2.  If you want **to create your Operator quickly** and you do not need
    any complex capability levels =\> Operator SDK: Helm

3.  If you **want complex features** or/and be flexible about any future
    implementations =\> Operator SDK: Go

4.  If you want to keep a **single programming language in your
    organization**

    a.  If a popular Operator Framework exists for your language or/and
        you want to contribute to it =\> Operator Framework

    b.  If no popular Operator Framework exists for your programming
        language =\> Bare Programming Language

5.  If **none of the above** =\> Operator SDK: Go

### Use the right programming language

Operators are programs that can be written in any language of choice.
This works because Kubernetes provides a REST API that allows
communication with clients using lightweight protocols such as HTTP.
Consequently, software developers can write Operators in their preferred
programming language as long as long as the REST API specifications are
followed.

However, if developers are free to choose their programming language,
sooner or later a patchwork of different technologies and languages will
emerge. This will end up increasing costs for maintenance,
troubleshooting, bug fixing and support requests. A better strategy is
to focus on a single programming language and to use it for development
as a team. This greatly supports the collaboration and mutual support in
a team.

However, according to \[1\], **Operators written in Go Language** are by
far the most popular. The reason for this is two-fold: first, the
Kubernetes environment itself is written in Go, so the client library is
perfectly optimized. Second, the Operator SDK (with embedded
Kubebuilder) supports the implementation of Operators in Go out-of-the-box.
This saves developers a lot of code scaffolding and gives them code generation for
free.

### Design your Operator the right way

The last paragraph summarizes an unsorted list of best practices which
were found and published by various sources.

-   Writing an Operator involves using the Kubernetes API. Use a
    framework like Operator-SDK to save yourself time with this and get
    a suite of tooling to ease development and testing. \[3\]

-   Design an Operator in such a way that application instance continues
    to run unaffected and effectively even if the Operator is stopped or
    removed.

-   Develop one Operator per application \[4\]

-   Operators should be backward compatible and always understand
    previous versions of resources that have already been created.

-   Use asynchronous sync loops \[4\]

-   Operators should leverage built-in Kubernetes primitives such as
    replica sets and services. Whenever possible, use well-understood
    and well-tested code.

-   When possible, test Operators against a test suite that simulates
    potential failures of Pods, configuration, storage, and networking.

### References

\[1\] https://operatorhub.io

\[2\]
https://hazelcast.org/blog/build-your-kubernetes-operator-with-the-right-tool/

\[3\]
https://github.com/operator-framework/community-operators/blob/master/docs/best-practices.md

\[4\]
https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps
