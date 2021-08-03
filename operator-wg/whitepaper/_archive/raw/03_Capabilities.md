**Status**: WIP | **Maintainer** : Omer Kahani | 

### Operator capabilities
An operator is able to assist with operating an application or other managed components by solving many different tasks. When talking about operators, the first and most well known capability is the ability of installing and upgrading stateful applications. However, an operator could manage the full lifecycle of an application without necessarily having to deal with the installation/upgrading at all. 

The following sections should give an overview about capabilities an operator could have and what a user can expect if an operator implements these capabilities.

#### Install an application / take ownership of an application
An operator should be able to provision and set up all the required resources, so no manual work would be required during the installation. An operator must check and verify that resources that were provisions are working as expected, and ready to be used.

An operator should also be able to recognize resources that were provisioned before the installation process, and only take ownership of them for later use. In this case, the ownership process should be seamless and not cause downtime. The ownership process purpose is to enable easy migration of resources to the operator.

An Operator should report the version of the resources and their health status during the process.

#### Upgrade an application
An operator should be able to upgrade the version of the application / resources. The operator should know how to update the required dependencies, and run custom commands, for example, run database migration.

An operator should monitor the update, and rollback if there was a problem during the process.

An operator should report the version of the resources and their health status during the process. If there was an error, the version reported should be the version that is currently been used.

#### Backup

This capability is for operators that manage data and ensure that the operator is able to create consistent backups. This backup should be done in a way that the user of the operator can be certain that it can be restored if data is lost or compromised. Furthermore, the status information provided should give insights about when the backup last ran and where it is located.

![Example Backup Process](plantuml/backup-sequence.png)

The above illustration shows how such a process could look like. At first the backup gets triggered either by a human or another trigger (e.g. time-trigger). The operator instructs its watched resource (application) to set up a consistent state (like a consistent snapshot). Afterwards, the data of the application gets backed up to an external storage using appropriate tools. This could either be a one-step process (backup directly to external storage) or in multiple steps, like writing to a persistent volume at first and to the external storage afterwards. The external storage might be a NFS/CIFS share (or any other network file system) on-premises, but also an object store/bucket on a cloud provider infrastructure. Whether the backup failed or succeeded, the state (of the backup) including the backed up application version and the location of the backup might be written to the state section of the custom resource.

#### Recovery from backup

The recovery capability of an operator might assist a user in restoring the application state from a successful backup. Therefore, the application state (application version and data) should be restored. 

There might be many ways to achieve this. One possible way could be that the current application state also got backed up (including configuration), so the user only has to create a custom resource for the application and point to the backup. The operator would read the configuration, restore the application version and restore the data. Another possible solution might be that the user only backed up the data and might have to specify the application version used. Nevertheless, in both ways the operator ensures that the application is up and running afterwards using the data from the backup specified.

#### Auto-Remediation
The auto-remediation capability of an operator should ensure that it is able to restore the application from a more complex failed state, which might not be handled or detected by mechanisms as health checks (live- and readiness probes). Therefore, the operator needs to have a deep understanding of the application. This can be achieved by metrics which might indicate application failures or errors, but also by dealing with kubernetes mechanisms like health checks. 

Some examples might be:
* Rolling back to the last known configuration if a defined amount of pod starts is unsuccessful after a version change.
* In some points a restart of the application might be a short-term solution which also could be done by the operator
* It could also be imaginable that an operator informs another operator of a dependent service that a backend system is not reachable at the moment (to take remediation actions).

In any ways, this capability enables the operator to take actions to keep the system up and running. 


#### Monitoring/metrics - observability
While the managed application should provide the telemetry data for itself, the operator could provide metrics about its own behavior and only provides a high level overview about the applications state (as it would be possible for auto-remediation). Furthermore, typical telemetry data provided by the operator could be the count of remediation actions, duration of backups, but also information about the last errors or operational tasks which were handled.


#### Scaling (Operator Supports Scaling)
Scaling is part of the day-2 operations that an operator can manage in order to keep the application / resources functional. The scaling capability doesn’t require the scaling to be automated, but only that the operator will know how to change the resources in terms of horizontal and vertical scaling.

An operator should be able to increase or decrease any resource that it owns, such as CPU, memory, disk size and number of instances.

Ideally the scaling action will be without a downtime. Scaling action ends when all the resources are in consistent state and ready to be used, so an operator should verify the state of all the resources and report it.

#### Auto-Scaling
An operator should be able to perform the scaling capability based on metrics that it collects constantly and according to thresholds. An operator should be able to automatically increase and decrease every resource that it’s own

An operator should respect basic scaling configuration of min and max.


#### Auto-configuration tuning
This capability should empower the operator to manage the configuration of the managed application. As an example, the operator could adopt memory settings of an application according to the operation environment (e.g. kubernetes) or the change of DNS names. Furthermore, the operator should be able to handle configuration changes in a seamless way, e.g. if a configuration change requires a restart, this should be triggered. 

These capabilities should be transparent to the users the user should have the possibility to override such auto-configuration mechanisms if he wants to do so. Furthermore, automatic reconfigurations should be well-documented in a way that the user could comprehend what is happening on the infrastructure.

#### Uninstalling / Disconnect
**(Current) Issues: https://github.com/cncf/sig-app-delivery/issues/52 & https://github.com/cncf/sig-app-delivery/issues/53**
When deleting the declarative requested state (in most cases a custom resource), an operator should allow two behaviors:
- Uninstalling: An operator should be able to completely remove or delete every managed resource.
- Disconnecting: An operator should stop managing the provisioned resources.

Both processes should be applied to every resource that the operator directly provisioned.  
An operator should report any failure in the process in a declarative way (using the [status field](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/#object-spec-and-status) for example). 
