## kubebuilder Operator Framework

The kubebuilder framework provides developers the possibilities to extend the Kubernetes API by using Custom Resource Definitions, and to create operators that handle these custom resources.

The main entry point provided by the kubebuilder framework is a *Manager*. In the same way the native Kubernetes controllers are grouped into a single Kubernetes Controller Manager (`kube-controller-manager`), you will be able to create several controllers and make them managed by a single manager.

As Kubernetes API resources are attached to domains and arranged in Groups, Versions and Kinds, the Kubernetes custom resources you will define will be attached to your own domain, and arranged in your own groups, versions and kinds.

The first step when using kubebuilder is to create a project attached to your domain, that  will create the source code for building a single Manager.

After initiating your project with a specific domain, you can add APIs to your domain and make these APIs managed by the manager.

Adding a resource to the project will generate some sample code for you: a sample *Custom Resource Definition* that you will adapt to build your own custom resource, and a sample *Reconciler* that will implement the reconcile loop for your operator handling this resource.

The kubebuilder framework leverages the `controller-runtime` library, that provides the Manager and Reconciler concepts, among others.

The kubebuilder framework provides all the requisites for building the manager binary, the image of a container starting the manager, and the Kubernetes resources necessary for deploying this manager, including the `CustomResourceDefinition` resource defining your custom resource, a `Deployment` to deploy the manager, and RBAC rules for your operator to be able to access the Kubernetes API.
