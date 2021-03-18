**Status**: WIP | **Maintainer** : N/A | 

## Operator Lifecycle Management
An operator is an application, this section will describe considerations regarding the lifecycle of the operator itself. 

### Upgrading the Operator
While upgrading the operator, special care should be taken in regards to the managed resources. During an operator upgrade, the managed resources should be kept in the same state and healthy. 

### Upgrading the Declarative State
the declerative state is the API of the operator, and it will need to be upgraded. Using a CRD versions indecates the stability of the CRD and the operator - [read more about versioning a CRD](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/)
