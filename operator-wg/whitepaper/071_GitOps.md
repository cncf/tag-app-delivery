**Status**: WIP | **Maintainer** : N/A | 

### Operator for GitOps
Often, operators are associated with installing, upgrading and operating applications. One example that an operator could also "operate" things without managing an application can be found in the GitOps world. 

There might be the case that an - mainly imperatively managed - application should be orchestrated in a more declarative and Git-driven way. Therefore, an operator could assist in fetching the configuration from a git-repository, analyze configurations to find out if something has to be changed and which actions should be taken and takes the according actions. 

![GitOps Example](img/071_GitOps_UseCase.png)

Above example might illustrate such a use case, where a used configuration is checked in git repository. The operator gets his knowledge about the git repository by using a custom resource definition (1), where the repository path and the information about the secret ist stored. The operator fetches the config (2) and analyzes it (3) which means that it applies its operational knowledge to get from the current to the desired state. This is achieved by querying the application about its current state and sending instructions to get to the desired state (3-5).

This enables the user to have reproducible configurations, versioned in a git repository.