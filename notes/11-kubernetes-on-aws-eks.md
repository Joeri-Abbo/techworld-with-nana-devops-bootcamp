## 11 - Kubernetes on AWS - EKS

#### ECS

An other name for ECS is Elastic Container Service.
It manage lifecycle of containers it can create ECS cluster containing all services to manage containers.
Containers themselves run on EC2 instances like docker swarm but your containers are managed by ECS.

#### ECS vs Fargate

Fargate is alternative to ECS that runs containers without having to manage EC2 instances.
This means you don't have to worry about scaling EC2 instances because Fargate will scale them for you.
You also do not have any maintenance to do on EC2 instances because Fargate will do it for you.

#### EKS

Managing K8s cluster on AWS.
It is a greate control plan if you already use k8s.
K8s is open-source this means the level of vendor locking is a lot lower then Fargate.
Because you can use k8s on other cloud providers. In combination with terraform you can easily migrate your cluster to
another cloud provider.
It is better then for example docker swarm because it is more flexible and has more features.

#### Steps to create EKS cluster

1. Provision EKS cluster (This sets up control plane)
2. Create NodeGroup of EC2 instances
3. Connect NodeGroup to EKS cluster

#### ECR

Elastic Container Registry is a docker registry that is managed by AWS.
I personally think github is a better and more flexible option for storing docker images.
A downside of Github registry is that you have to do more integration work to get it working with your CI/CD pipeline to
AWS.

#### Fargate

AWS Fargate is a serverless compute engine for containers.
Like Lambda it is a pay-per-use service. This means you only pay for the resources you use.
Fargate is a great option if you want to run containers without having to manage EC2 instances.
Fargate will manage the EC2 instances for you.