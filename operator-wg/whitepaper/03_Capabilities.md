**Status**: WIP | **Maintainer** : Omer Kahani | 

### Operator capabilities
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/38**

In the following sections, capabilities an operator could have are described.

#### Install an application / take ownership of an application
An operator should be able to provision and set up all the required resources, so no manual work would be required during the installation. An operator must check and verify that resources that were provisions are working as expected, and ready to be used.

An operator should also be able to recognize resources that were provintied before the installation process, and only take ownership of them for later use. In this case, the ownership process should be seamless and not cause downtime. The ownership process purpose is to enable easy migration of resources to the operator.

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
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/51**

#### Monitoring/metrics - observability
While the managed application should provide the telemetry data for itself, the operator could provide metrics about its own behavior and only provides a high level overview about the applications state (as it would be possible for auto-remediation). Furthermore, typical telemetry data provided by the operator could be the count of remediation actions, duration of backups, but also information about the last errors or operational tasks which were handled.

#### Scaling (Scaling of the Operator itself)

#### Scaling (Operator Supports Scaling)
Scaling is part of the day-2 operations that an operator can manage in order to keep the application / resources functional. The scaling capability doesn’t require the scaling to be automated, but only that the operator will know how to change the resources in terms of horizontal and vertical scaling.

An operator should be able to increase or decrease any resource that it owns, such as CPU, memory, disk size and number of instances.

Ideally the scaling action will be without a downtime. Scaling action ends when all the resources are in consistent state and ready to be used, so an operator should verify the state of all the resources and report it.

#### Auto-Scaling
An operator should be able to perform the scaling capability based on metrics that it collects constantly and according to thresholds. An operator should be able to automatically increase and decrease every resource that it’s own

An operator should respect basic scaling configuration of min and max.


#### Auto-configuration tuning
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/54**

#### Uninstalling / Disconnect
**(Current) Issues: https://github.com/cncf/sig-app-delivery/issues/52 & https://github.com/cncf/sig-app-delivery/issues/53**
When deleting the declarative requested state (in most cases a custom resource), an operator should allow two behaviors:
- Uninstalling: An operator should be able to completely remove or delete every managed resource.
- Disconnecting: An operator should stop managing the provisioned resources.

Both processes should be applied to every resource that the operator directly provisioned.  
An operator should report any failure in the process in a declarative way (using the [status field](https://kubernetes.io/docs/concepts/overview/working-with-objects/kubernetes-objects/#object-spec-and-status) for example). 
