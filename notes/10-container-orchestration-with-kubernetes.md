## 10 - Container Orchestration with Kubernetes

Use case is to deploy more complex apps under microservices architecture but can also be used for monolith apps.

### Pros

- High availability/no downtime
- Scalability/high performance
- Disaster recovery/backup and restore

### K8s components:

- Node - Physical or virtual server can be worker or master(for example AWS EC2 instance)
- Pod - Abstraction over container each pod gets its own internal IP address
- Service - Permanent IP address that can be attached to Pod, also acts as load balancer between Pods
- Ingress - Forwarding from request to Service
- ConfigMap - External config of app
- Secret - Used to store secret data, base64 encoded
- Volumes - Persists data
- Deployment - blueprint for Pods with its configuration
- StatefulSet - Deployment for stateful apps or DBs
- Replicaset - abstraction layer between pods and deployments (manages replicas of pods)
- DaemonSet - runs on every worker node
- CRD - Custom Resource Definition

### K8s commands:

- minicube(start / stop) - for testing cluster setup on local
- kubectl - cmd line tool for K8s: talk to API server
- kubectl get nodes
- kubectl get pod
- kubectl get pod -o wide (display more info for pod like IP address)
- kubectl get deployment
- kubectl get services
- kubectl create deployment NAME --image=image
- kubectl edit deployment NAME
- kubectl logs NAME
- kubectl describe pod NAME
- kubectl exec -it NAME -- bin/bash
- kubctl delete deployment NAME
- kubectl apply -f FILENAME

### Namespaces

4 namespaces by default in K8s cluster but you can create more for you own purposes for example for dev and prod or for
different teams:

#### Default namespaces

- kube-system - System processes
- kube-public - Configmap containing cluster info
- kube-node-lease - Heartbeat of nodes for availability
- default - Resources you create if haven't specified custom namespace

#### Good practices

- Group resources in Namespaces to get better overview of resources
- Avoid conflicts between teams
- Resource sharing (dev and staging, blue/green prod)
- Access and resource limits (CPU, RAM, Storage)

### Service

Service is abstraction layer that has IP address
Services can have multiple ports, but they have to be named in this case
Services types:

#### ClusterIP

default type

#### Headless

Set 'clusterIP: None' (no service IP given, meaning that client will talk directly to Pod IP instead, useful
when need to talk to specific Pods that differ because of state for eg)

#### NodePort

Accessible from outside cluster using fixed port on each Worker node (range 30.000 - 32.767), however not
secure

#### LoadBalancer

Cluster becomes accessible using cloud providers native load balancer (extension and more secure
alternative to NodePort which should only be used for quick testing)

### Ingress

Preferred alternative to external service,
Domain name needs to be valid and based on IP address of node entry point.
Can define multiple paths for same host.
Can have multiple hosts with 1 path, each host representing a subdomain.
can configure https by importing tls certificate as secret within same namespace

### Volumes

Persist data need to decide what type of storage is needed and manage it yourself not namespaced, accessible from
everywhere in cluster and are provisioned by admin users.
Application needs to claim volume storage via Persistent Volume Claim (pvc) - both claim and pod claiming need to be in
same namespace.
Can create a Storage Class to provision Persistent Volumes dynamically (abstracts underlying storage provider)
ConfigMap & Secret volumes ( = local volume types).
Can create individual key-value pairs - as env vars or mount files - mount as volume types

Only a master pod allowed to write data, all other worker pods can only read as replicas are read-only.
Each pod has own storage (for PV use remote storage), continuously sync data between pods and each new pod clones data
from previous up-to-date pod.

### Managed Kubernetes Services

Cluster setup done automatically for you you only need need to specify number worker nodes and their sizes.
You can automate provisioning of cluster as many providers integrate with tools like Terraform. But you can also use a
scaleable group in aws to automatically scale up and down the number of worker nodes.

### Helm

Package manager for K8s

#### Helm Charts

PKG YAML files & distribute them in public + private repos to be shared

#### Helm Hub

helm search repo <keyword>OR browse Helm Hub

#### Commands

- helm search repo <keyword>
- helm repo add <keyword>
- helm install <pod_name> --values <values_file> <helm_chart>
- helm uninstall <helm_chart>

#### Helmfile

Declare a definition of an entire K8s cluster in single yaml file to deploy

- brew install helmfile
- helmfile sync
- helmfile list
- helmfile destroy

### Operators

Mainly for stateful apps.
It is a custom control loop mechanism.
Automatically manage full lifecycle of stateful apps.

### Authorization & RBAC (Role Based Access Control)

For Devs restrict access to only specific namespace.
RBAC via Role component & RoleBinding component.
Role defines resources and access permissions.
RoleBinding (link Role to User or Group).
For Admins restrict access to cluster-wide ops
RBAC via ClusterRole & ClusterRoleBinding components
K8s relies on external sources for auth (static token file, certificates, 3rd party id service like LDAP) via API
Server