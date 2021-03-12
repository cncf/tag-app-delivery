**Status**: WIP | **Maintainer** : Omer Kahani | 

### Operator capabilities
An operator is able to assist on operating an application or other managed components by solving many different tasks. When talking about operators, the first and most well known capability is the ability of installing and upgrading stateful applications. Besides that, an operator could manage the full lifecycle of an application, but does not necessarily have to deal with the installation/upgrading at all. 

The following sections should give an overview about capabilities an operator could have and what a user can expect if an operator implements these capabilities.

#### Install an application / take ownership of an application
An operator should be able to provision and set up all the required resources, so no manual work would be required during the installation. An operator must check and verify that resources that were provisions are working as expected, and ready to be used.

An operator should also be able to recognize resources that were provintied before the installation process, and only take ownership of them for later use. In this case, the ownership process should be seamless and not cause downtime. The ownership process purpose is to enable easy migration of resources to the operator.

An Operator should report the version of the resources and their health status during the process.

#### Upgrade an application
An operator should be able to upgrade the version of the application / resources. The operator should know how to update the required dependencies, and run custom commands, for example, run database migration.

An operator should monitor the update, and rollback if there was a problem during the process.

An operator should report the version of the resources and their health status during the process. If there was an error, the version reported should be the version that is actually been used.

#### Backup
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/49**

An operator’s capability to back up the application state and it’s data should give the user the certainty that he is able to restore from a failure if data is lost or compromised.

Therefore, the process of backing up data can be described as follows:
Backup gets triggered (either manually or automatically)
The application is set to a state where it allows consistent backups
Backup data and save it to an external storage
Write the Backup state and its location to the custom resource

At first, the application (data store) is set to consistent state (like a consistent snapshot). Afterwards, the data gets backed up using appropriate tools and are saved to an external storage, which may be an nfs share on-site, but could also be an s3 bucket in the cloud. Either if the Backup failed or succeeded, this state will be written to the state of the custom resource.

#### Recovery from backup
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/50**

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
