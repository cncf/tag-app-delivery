**Status**: WIP | **Maintainer** : N/A | 


## Related Work
Initially, Operators were introduced by a blog post on the CoreOS Blog. This article provides a rough overview what operators are, why the concept has been developed and how they are built. The insights of this article are mainly used for the definition of operators in this document. As the blog post only provided a concise overview, additional terms as capabilities, security and additional concepts are described more in-depth in this document.

The Operator Pattern as a concept is described in the Kubernetes documentation and therefore provides an overview how an example operator could do and provides starting points for writing an operator. (https://kubernetes.io/docs/concepts/extend-kubernetes/operator/).

The Book “Kubernetes Operators” (Dobies & Wood, 2020) provides a comprehensive overview about operators, which problems they solve and the different methods to develop them. Definitions made in this book flowed into this document. The same applies to the Book “Kubernetes Patterns” (Ibryam, 2019), which provides more technical and conceptual insights to operators. Definitions made in these books were summarized in this document (to provide a common declaration of operators).

Ref: Dobies, J., & Wood, J. (2020). Kubernetes Operators. O'Reilly.

Michael Hausenblas and Stefan Schimanski wrote a book about Programming Kubernetes, which provides deeper insights into client-go, custom resources, but also about writing operators. 

Ref: Michael Hausenblas and Stefan Schimanski, Programming Kubernetes: Developing Cloud-Native Applications, First edition. (Sebastopol, CA: O’Reilly Media, 2019).

Google provided a blog post about best practices for building Kubernetes Operators and stateful apps. Some of the advisories of this post take place in the best practices section of the whitepaper (https://cloud.google.com/blog/products/containers-kubernetes/best-practices-for-building-kubernetes-operators-and-stateful-apps).

Many documents describe capability levels (also known as maturity levels) of operators. Since there could be cases where an operator that supports all features that fall on the highest capability level but does not support some lower level features, this document chooses to cover “capabilities” rather than “capability levels”. The capabilities required for each capability level, however, are taken into consideration.

Ref: Operator Framework. (n.d.). Operator Capabilities. Operator Framework. Retrieved 11 2020, 24, from https://operatorframework.io/operator-capabilities/,
https://github.com/cloud-ark/kubeplus/blob/master/Guidelines.md

The CNCF TAG Security spent a lot of effort to add security related topics to this whitepaper. As the content of this whitepaper should mostly cover operator-related security measures, they wrote a cloud native security whitepaper which is a very useful source when dealing with cloud native security (https://github.com/cncf/tag-security/blob/main/security-whitepaper/v2/cloud-native-security-whitepaper.md).
