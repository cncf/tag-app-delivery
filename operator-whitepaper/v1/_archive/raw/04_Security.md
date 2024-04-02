**Status**: WIP | **Maintainer** : N/A |

## Security
**(Current) Issue: https://github.com/cncf/sig-app-delivery/issues/39**


![operator model](img/04_1_operator_model.png)

Operators are intended to manage their state and configuration via
the Kubernetes API server using the Custom Resource Definition. The
subordinate API resources they manage (often pods running stateful
applications) also have their lifecycle and supporting RBAC, services,
etc. managed via the Kubernetes API. In some cases the operator
will also interact with the application’s API across the network.
All of these routes offer potential to compromise the operator and
its resources, and should be protected in line with best practices
laid out below.


### Operator Developer
Operator developers should be aware of the security risks an operator
introduces and document its secure use. While developing an operator
it's important to focus on key areas such as transparency and
documentation, operator scope, and vulnerability analysis.

#### Transparency and Documentation
During development of an operator you should have a clear understanding
of how it will work and interface within Kubernetes. You should
provide your users with some or all of this list:

* Descriptive diagram (threat model) of how the operator is
communicating and with what is a good start to helping a user
understand how they must secure it and apply policy for the operator.
* Use case of how the software is intended to be used in order to
stay in scope of compliance or you risk vulnerability outside that
scope.
* Operator issue, feature, version tracking.
* Logging and monitoring attachment through exposed endpoints, 
log levels, or log aggregation.
* Documented RBAC scopes, threat model, communication ports, API
calls available, pod security policy requisites (or other policy engine
requisites), or any other policy engine requisites developed for
Kubernetes such as OPA.

#### Operator Scope

There are many use cases for operators and there is virtually no limit
in the scope of what you can design it for. In order to be clear about
the secure nature of your operator you must include the communication 
involved with each scope. The general scope’s which could be used are 
cluster-wide operators, namespace operators, and external operators. In
order to secure these we must know the nature of the communication, any
API’s created, controllers and their responsibility, and any application
metric endpoints. If this information is provided with the operator it 
can be used to further secure the operator application within the scope 
of implementation. If the information is not provided you can be left 
vulnerable to a myriad of attacks.

**Cluster-wide Operators** exist to execute custom resources across a 
cluster no matter if those resources are living in another namespace
or not.   
**Namespace Operators** exist to execute custom resources within a 
namespace. Usually there are policy engine policies applied to jail the
scope within the namespace and only communicate with pods within the 
namespace. This is considered more secure by nature, but the same rules
apply.   
**External Operators** exist to execute custom resources that are 
external to the cluster. The same rules apply, in addition to secure this
scope we must know the nature of the communication from the cluster to
the external component.  

#### Vulnerability Analysis

Since we are focused on the development and security of the operator
there are steps you can take as an operator developer to ensure 
validation and proper security analysis has been done. Following the
guidelines in the CNCF Cloud Native Security Whitepaper there is a 
clear lifecycle process which defines the [layers of concern](https://github.com/cncf/tag-security/blob/main/security-whitepaper/v2/cloud-native-security-whitepaper.md#cloud-native-layers) for the operator developer. All three layers
should be adhered to with a strict focus on the develop and distribute
layers in the scope of the operator developer. There are many detailed
guidelines in the development and distribution layers that will help 
to apply sound vulnerability analysis to your supply chain to ensure
that the operator being developed is signed and trusted for the best 
integrity. The CNCF [Cloud Native Security Whitepaper](https://github.com/cncf/tag-security/blob/main/security-whitepaper/v2/cloud-native-security-whitepaper.md)
is available at this link.  
  
In addition to your supply chain you will also want to focus on 
performing a threat model of the operator to keep you as the developer
in check and also make sure that you didn’t incidentally miss something
that could leave the door open for attack. The foundational model for
checking for threats can be observed in the CNCF Cloud Native Security
Whitepaper on [Threat Modeling](https://github.com/cncf/tag-security/blob/main/security-whitepaper/v2/cloud-native-security-whitepaper.md#threat-modeling).  

### Application Developer ("users")

Operators perform  administrative tasks on the user’s behalf such
as volume creation and attachment, application deployment, and
certificate management. As the user is delegating control to the
operator it is essential to provide machine authorization to perform
the actions needed, but one must also be careful to not grant more
privileges than are necessary for the operator to perform its role.

Deployment of an operator grants third-party software some level
of access to a Kubernetes namespace or cluster. While security
expertise is not required to use operators, the following  Kubernetes
concepts highlight security preparation when using an operator:

**Namespaces** are one of the primary ways of grouping and cordoning a
group of resources. In regards to an operator, the user should
consider what namespaces the operator needs to work with. While
there may be some use cases where a single operator needs access
to the whole cluster, it seems the common use case in 2021 is for
an operator to work with a specific application within Kubernetes,
so it usually makes sense to provide a namespace for that application
and related resources/operators. To further reduce the operator’s
separation from any loose or stolen RBAC in the subordinate resource’s
namespace, a dedicated namespace for the operator provides more
separation.

**Role-Based Access Controls** are available in modern releases of
Kubernetes. When granting an operator access to resources, the focus
should be on granting the most limited set of permissions needed
for the operator to perform its task. This means only grant
ClusterRoles if absolutely necessary, but granting specific permissions
for specific resources/namespaces. The 
[Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
chapter of the user guide covers this topic in detail. Operator
build kits such as the Operator SDK use general RBAC defaults that
developers may have not refined for their specific operator.
Permissions afforded by the service account identity outside the
cluster include federated and cross-cluster operators that have
permissions in other Kubernetes clusters. As operators are increasingly
used to manage off-cluster and cloud resources, cloud IAM integration
permissions should be configured to prevent cloud account takeover
from a compromised operator.

One thing to note: A “land grab” of privileges - eg requesting
significant/administrative access - is not always malicious in
intent. The developer might not know better, or have had the time
to tune the required permissions to the concept of least privilege.
Even in the most innocent case, though, it is still a red flag:
Perhaps the operator is not yet widely used enough for others to
have encountered the overuse of privileges, and perhaps it is a
sign of other security weaknesses within the operator. It is advisable
to proceed with caution if such a “land grab” is found.

**Software provenance**: The “software supply chain” is starting to get
more attention at time of writing this whitepaper. Consider the
source for your operator, how it is being installed, and how or why
a malicious user may want access to your systems. Spend a few minutes
reviewing an installation script before running it. While the kubectl
command supports the ability to apply a yaml script directly from
the public Internet (e.g `kubectl create -f
https://publicwebsite.com/install/operator.yaml`) it is strongly
recommended that you first download that file locally, review it,
and then run `kubectl create -f operator.yaml`.

To review the script ask the following questions:

* What is the purpose of this script?
* What resources are being created by the script? Is this script creating Roles and RoleBindings?
* What 3rd party sources will the script attempt to use? (e.g.
container images, other yaml files) How popular and well-maintained
are the git and docker image repositories? These might be signs of
a new project, abandoned software which is no longer receiving
security updates, or indicators of an unofficial repository with
malicious intent.
* What privileges does the script attempt to gain? Does the script
attempt to run container securityContexts with host sharing or
“privileged mode”?

**Advanced security controls**, such as SELinux, AppArmor, or seccomp
may be mandated by cluster policy. Open source operators are unlikely
to have configurations for these Linux security modules, but if
your organization is familiar with one of these control systems,
writing the appropriate security configuration for the operator
should not require significant overhead.

**Operator configuration**: Ideally a project will be “secure by
default” to increase the likelihood of a secure operator or application
deployment. Insecure defaults require manual configuration to secure
your environment. While it may seem like unnecessary work to learn
configuration  parameters of a new operator, it is usually preferable
manually adjusting the configuration and/or source code of an
operator itself to reach the needed level of security.
