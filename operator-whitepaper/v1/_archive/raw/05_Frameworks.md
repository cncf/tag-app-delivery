**Status**: WIP | **Maintainer** : N/A | 

## Operator Frameworks for Kubernetes
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/40**

Currently, a lot of frameworks exist to simplify the process of bootstrapping an operator/controller project and to write operators. This chapter describes some of them without any claim to comprehensiveness. 

## [Framework_1](051_Framework_1.md)

- Add short description of the framework.
- How does it work (in a Nutshell)?
- Describe the value that this framework brings.
- When should I use this framework?

<em>If the framework overview needs more than a couple of paragraphs, add another markdown file and link it on the Framework header.</em>


## [CNCF Operator Framework](https://github.com/operator-framework)

The *Operator Framework* is an open source toolkit to manage Kubernetes native applications, called Operators, in an effective, automated, and scalable way.

It aims at Operator Developers with an SDK to streamline Operator development with scaffolding tools (based on [kubebuilder](https://github.com/kubernetes-sigs/kubebuilder)), a test harness for unit tests and integration as well as functional tests and packaging / distribution mechanisms to publish version histories of Operators in conjunction with a user-configurable update graph. Supported project types are Golang, Helm and Ansible. Python and Java are currently in development.

It also caters for Kubernetes administrators that require a central point to install, configure and update Operators in multi-tenant environment with potentially dozens of Operators installed. It covers the following aspects of Operator lifecycle:

- Continuous over-the-Air Updates and Catalogs of Operators a publishing mechanism and source of updates
- Dependency Model so Operator can have dependencies on cluster features or on each other
- Discoverability for less privileged tenants that usually cannot list CRDs or see Operators installed in separate namespaces
- Cluster Stability that avoid runtime conflicts of Operators on multi-tenant clusters while honoring the global nature of CRDs, and the subtleties of CRD versioning and CRD conversion
- Declarative UI controls that allows consoles to generate rich UI experiences for end users interacting with Operator services

## [Kopf](https://github.com/nolar/kopf)


**Kopf** —**K**ubernetes **O**perator **P**ythonic **F**ramework— is a framework
to create Kubernetes operators faster and easier, just in a few lines of Python.
It takes away most of the low-level Kubernetes API communication hassle and
marshalls the Kubernetes resource changes to Python functions and back.
As simple as this:

```python
import kopf

@kopf.on.create(kind='KopfExample')
def created(patch, spec, **_):
    patch.status['name'] = spec.get('name', 'world')

@kopf.on.event(kind='KopfExample', field='status.name', value=kopf.PRESENT)
def touched(memo, status, **_):
    memo.last_name = status['name']

@kopf.timer('KopfExample', interval=5, when=lambda memo, **_: 'last_name' in memo)
def greet_regularly(memo, **_):
    print(f"Hello, {memo['last_name']}!")
```

You should consider using this framework if you want or need to make ad-hoc
(here-and-now one-time non-generalizable) operators in Python 3.7+, especially
if you want to bring your application domain directly to Kubernetes as custom
resources.
For more features, see the [documentation](https://kopf.readthedocs.io/en/stable/).


## kubebuilder
[read more](051_Framework_kubebuilder.md)



- Add short description of the framework
- How does it work (in a Nutshell)?
- Describe the value that this framework brings.
- When should I use this framework?

<em>If the framework overview needs more than a couple of paragraphs, add another markdown file and link it on the Framework header.</em>
