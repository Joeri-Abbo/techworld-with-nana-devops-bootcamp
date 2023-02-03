## 9 - AWS Services

Examples of services provided by AWS

- EC2 - Virtual servers
- S3 - Storage
- VPC - Subnets
- IAM - Users and permissions management
- ECR - Container registry
- ECS - Container orchestration
- EKS - Container orchestration w Kubernetes

### Services scopes

- global - eg. IAM
- region - eg. S3, VPC
- AZ (Availability Zone)

### IAM - Identity Access Management

Can create users and assign permissions to them.

The best practice is to create an admin user with less privileges than root user (root created by default when creating
AWS account).
This admin user can then create other accounts for users & system users.
Groups can be created with permissions to add a set of permissions to multiple users.
Only try to add permissions to user groups and not to individual users.
Because users can be added to multiple groups, it's easier to manage permissions this way.
Unlike IAM users, policies can't be set directly for AWS services - need to create IAM role first and then attach the
policy to the IAM role (policy specific to service).

### Regions and AZ

- Region = physical regions where data centers are clustered
- Availability Zone = Regions had a minimum of 2 Availability Zones, however moving forwards new Regions will have a
  minimum of 3 Availability Zones where possible.

### VPC - Virtual Private Cloud

Created by default for each region.
Firewall Rule config can be added to make Subnet either private or public.
Internet Gateway can connects VPC to outside internet.
NACL (Network Access Control List) config access on subnet level.
Security Group config access on instance level.

### CIDR Blocks

Range of IP addresses
Example : 176.31.0.1/24
A lower number after the / means the higher the range of ip addresses

### AWS CLI

To get started with AWS CLI you need to install it I used brew to install it on my mac.
To install it for mac you need to run brew install awscli.

After installing you can configure it by running aws configure.
This command will ask you for your access key ID, secret access key, region and output format.

#### EC2 cmd

- aws ec2 run-instances --image-id xxxx -- count x ...
- aws ec2 describe-vpcs
- aws ec2 create-security-group <attr>
- aws ec2 authorize-security-group-ingress <attr>
- aws ec2 create-key-pair <attr>
- aws ec2 describe-subnets

#### IAM cmd

- aws iam create-group <attr>
- aws iam create-user <attr>
- aws iam add-user-to-group <attr>
- aws iam get-user <attr>
- aws iam get-group <attr>
- aws iam list-policies <attr>
- aws iam attach-user-policy <attr>
- aws iam attach-group-policy <attr>
- aws iam list-attached-group-policies <attr>
- aws iam create-login-profile <attr>
- aws iam create-policy <attr>
- aws iam create-access-key <attr>
