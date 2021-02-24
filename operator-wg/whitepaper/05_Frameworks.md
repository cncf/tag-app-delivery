**Status**: WIP | **Maintainer** : N/A | 

## Operator Frameworks for Kubernetes
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/40**

## [Framework_1](051_Framework_1.md)

- Add short description of the framework.
- How does it work (in a Nutshell)?
- Describe the value that this framework brings.
- When should I use this framework?

<em>If the framework overview needs more than a couple of paragraphs, add another markdown file and link it on the Framework header.</em>


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
(here-and-now one-time non-generalisable) operators in Python 3.7+, especially
if you want to bring your application domain directly to Kubernetes as custom
resources.
For more features, see the [documentation](https://kopf.readthedocs.io/en/stable/).


## kubebuilder
[read more](051_Framework_kubebuilder.md)

## [Non_k8s_Framework_1](051_Framework_1.md)

- Add short description of the framework
- How does it work (in a Nutshell)?
- Describe the value that this framework brings.
- When should I use this framework?

<em>If the framework overview needs more than a couple of paragraphs, add another markdown file and link it on the Framework header.</em>

