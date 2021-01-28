**Status**: WIP | **Maintainer** : N/A | 

## Use Cases for an Operator
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/40**

Example:
An operator is used to install an application, or to provision another object which is achieved by defining a set of objects which are managed by the operator and how they work with each other. After the installation, the target application should be running without human interaction. In further consequence a controller is used for reconfiguration of a system.

To achieve this, an operator watches the current state and the definitions made in the custom resource or external events, compares them and starts reconciling the application to get to the desired state when it’s needed. Changes in the custom resource could be enabling a feature or changing a version, external events could be the availability of an application update reported by an api. The current state of the application could also differ, when objects managed by the operator get deleted and so they also get recreated to get to the desired state.

When updating an application, the operator contains the logic which is needed to get to the new application version and how to transition. As described in the last chapter, this could be mechanisms to backup data before updating and updating the database schema. Therefore, the logic included in the operator knows which prerequisites are necessary to build a consistent backup, how to backup the data and how to get back to the normal state.

Finally, the operator is able to remove the application and the resulting objects.
