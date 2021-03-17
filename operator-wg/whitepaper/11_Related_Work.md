**Status**: WIP | **Maintainer** : N/A | 


## Related Work
Initially, Operators were introduced by a blog post on the CoreOS Blog. This article provides a rough overview what operators are, why the concept has been developed and how they are built. The insights of this article are mainly used for the definition of operators in this document. As the blog post only provided a concise overview, additional terms as capabilities, security and additional concepts are described more in-depth in this document.

The Book “Kubernetes Operators” (Dobies & Wood, 2020) provides a comprehensive overview about operators, which problems they solve and the different methods to develop them. Definitions made in this book flowed into this document. The same applies to the Book “Kubernetes Patterns” (Ibryam, 2019), which provides more technical and conceptual insights to operators. Definitions made in these books were summarized in this document (to provide a common declaration of operators).

Ref: Dobies, J., & Wood, J. (2020). Kubernetes Operators. O'Reilly.

Michael Hausenblas and Stefan Schimanski wrote a book about Programming Kubernetes, which provides deeper insights into client-go, custom resources, but also about writing operators. 

Ref: Michael Hausenblas and Stefan Schimanski, Programming Kubernetes: Developing Cloud-Native Applications, First edition. (Sebastopol, CA: O’Reilly Media, 2019).

Many documents describe capability levels of operators, which should describe the maturity of an operator. As there could be the case that an operator which supports all features of the highest level is not capable of some lower-level features, this document covers rather capabilities instead of capability levels. The capabilities used for defining capability levels were taken into consideration for this document. 

Ref: Operator Framework. (n.d.). Operator Capabilities. Operator Framework. Retrieved 11 2020, 24, from https://operatorframework.io/operator-capabilities/,
https://github.com/cloud-ark/kubeplus/blob/master/Guidelines.md

The CNCF SIG Security spent a lot of effort to add security related topics to this whitepaper. As the content of this whitepaper should mostly cover operator-related security measures, they wrote a cloud native security whitepaper which is a very useful source when dealing with cloud native security (https://github.com/cncf/sig-security/blob/master/security-whitepaper/cloud-native-security-whitepaper.md).

