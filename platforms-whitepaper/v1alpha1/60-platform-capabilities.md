## Capabilities of platforms

Having defined key attributes of a platform and platform teams, following are
capabilities required by typical digital projects which should be considered for
inclusion in a platform.

The goal of this list is to guide platform teams in determining what should be
included in their platform.

- Web portal for provisioning and observing capabilities
- APIs (and CLIs) for automatically provisioning capabilities on demand
- "Golden path" templates and docs enabling optimal use of capabilities
- Automation for building and testing services and products
- Automation for delivering and verifying services and products
- Services in support of product research and development: hosted IDEs, remote connection tools
- Instrumentation and dashboards to enable observability of services and products
- Infrastructure services: compute runtime, programmable network, block storage
- Data services: databases, caches, object stores
- Messaging services: brokers, queues, event fabrics
- Identity and secret management services: service and user identity and authorization, certificate and key issuance, static secret storage
- Security services: static analysis of code and artifacts, runtime analysis, policy enforcement
- Artifact storage: container image and language-specific package management, custom binaries and libraries, source code

// TODO: add cost tracking (finops) as a capability? OpenCost as an example project.

<table>
  <thead>
    <tr><td>Capability</td><td>Description</td><td>Example projects</td></tr>
  </thead>
  <tr>
    <td>Application developer interfaces and experiences (#1, #2, #3)</td>
    <td>Documentation and code templates. APIs, Web UIs and CLIs. All the self-service experiences and  capabilities provided by a platform.</td>
    <td>Backstage (UI), Kubernetes (API, CLI), Kratix (API), Crossplane (API), Operator Framework, Dapr, Cartographer</td>
  </tr>
  <tr>
    <td>Automation for building and testing services and products (#4)</td>
    <td>Automate build and test of digital products and services.</td>
    <td>Tekton, Jenkins, Buildpacks, ko, buildah, Carvel, pact, testcontainers, testkube, kuttl</td>
  </tr>
  <tr>
    <td>Automation for deploying and delivering services and products (#5)</td>
    <td>Automate and control delivery of services and applications. For example, canary, blue/green, feature flags, post-deployment verification.</td>
    <td>ArgoCD, Flux, keptn, Flagger, OpenFeature, kapp (Carvel), Konveyor</td>
  </tr>
  <tr>
    <td>Observe products and services (#6)</td>
    <td>Enable all infrastructure capabilities and product workloads to emit telemetry.  Gather, analyze and publish info to product stakeholders.</td>
    <td>OpenTelemetry, Jaeger, Prometheus, Thanos, Fluentd, Grafana</td>
  </tr>
  <tr>
    <td>Infrastructure services (#7)</td>
    <td>Run application code. Connect application components. Persist data for applications</td>
    <td>Kubernetes (containers), kubevirt (VMs), Knative (functions), Istio, Envoy, Contour, Cilium, Rook, Longhorn, OpenEBS</td>
  </tr>
  <tr>
    <td>Data services (#8)</td>
    <td>Persist structured data for applications</td>
    <td>TiKV, Vitess, etcd, SchemaHero</td>
  </tr>
  <tr>
    <td>Messaging services (#9)</td>
    <td>Enable applications to communicate with each other asynchronously</td>
    <td>CloudEvents, NATS, gRPC, Knative (events)</td>
  </tr>
  <tr>
    <td>Identity and secret services (#10)</td>
    <td>Ensure workloads have the locators and secrets to access and use provisioned resources and services. Enable services to identify themselves securely to other services</td>
    <td>Directory, OAuth/OIDC, Hashicorp Vault, Dex, Keycloak, Pinniped, SPIFFE/SPIRE, servicebinding.io, cert-manager, Carvel secretgen</td>
  </tr>
  <tr>
    <td>Security services (#11)</td>
    <td>Observe runtime behavior and report/remediate anomalies. Verify builds and artifacts don't contain vulnerabilities. Constrain activities on the platform per enterprise requirements; notify and/or remediate aberrations</td>
    <td>Falco, KubeArmor, StackRox, OPA, Kyverno, cloud custodian</td>
  </tr>
  <tr>
    <td>Artifact storage (#12)</td>
    <td>Store, publish and secure built artifacts for use in production. Cache and analyze third-party artifacts.  Store source code.</td>
    <td>ArtifactHub, sigstore, Harbor, Dragonfly, OCI</td>
  </tr>
  <tr>
    <td>Extensibility</td>
    <td>Add APIs, controllers and portal pages to the platform to provide new functionality using the same patterns.</td>
    <td>Operator Framework</td>
  </tr>
  <tr>
    <td>Multi-tenancy</td>
    <td>Support many internal teams using one service implementation while keeping teams isolated from each other. Ensure isolation between teams</td>
    <td>vcluster, Cluster API, Nephio, open-cluster-manager, karmada, kcp</td>
  </tr>
  <tr>
    <td>Development environments and tools</td>
    <td>Provide tools to aid in editing, testing, and debugging code</td>
    <td>devfile, Tilt, Skaffold, DevSpaces, Telepresense, Eclipse Che, VS, JetBrains, Eclipse</td>
  </tr>
</table>
