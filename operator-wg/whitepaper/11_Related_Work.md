**Status**: WIP | **Maintainer** : N/A | 


## Related Work / What’s next? / Where to get help?
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/47**

Initially, Operators were introduced by a blog post on the CoreOS Blog (Philips, 2016) . This article provides a rough overview what operators are, why the concept has been developed and how they are built. The insights of this article are mainly used for the definition of operators in this document. As the blog post only provided a concise overview, additional terms as capabilities, security and additional concepts are described more in-depth in this document.

The Book “Kubernetes Operators” (Dobies & Wood, 2020) provides a comprehensive overview about operators, which problems they solve and the different methods to develop them. Definitions made in this book flowed into this document. The same applies to the Book “Kubernetes Patterns” (Ibryam, 2019), which provides more technical and conceptual insights to operators. Definitions made in these books were summarized in this document (to provide a common declaration of operators).

Many documents describe capability levels of operators, which should describe the maturity of an operator.

As there could be the case that an operator which supports all features of the highest level is not capable of some lower-level features, this document covers rather capabilities instead of capability levels. The capabilities used for defining capability levels were taken into consideration for this document.