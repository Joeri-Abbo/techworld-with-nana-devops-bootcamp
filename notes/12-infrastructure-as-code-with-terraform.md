## 12 - Infrastructure as Code with Terraform

Only for automating and manage infrastructure works great with ansible.
The way it works is that you define the infrastructure you want to have in a file and then you apply it. Terraform will
then create the infrastructure for you. It will also keep track of the state of the infrastructure. So if you change the
infrastructure you want to have, you can apply the changes and terraform will make the changes for you.

### advantages:

- version control (history) of infrastructure(Infrastructure as Code
- simple replication of infrastructure possible for different environments
- simple clean-up because you can remove all infrastructure with one command
- easier team collaboration because it is easy to see what infrastructure is created and what is not and to change it

### connects to platform provider using:

In our case we used AWS as our provider. Terraform connects to the provider using the API of the provider.
So for AWS it makes it super easy to deploy for example ec2 server as much as needed and to manage it in one repo.

### Terraform files

- main.tf -> contains all terraform config
- variables.tf -> contains all variables
- outputs.tf -> contains all outputs
- providers.tf -> contains all providers
- terraform.tfvars -> contains all variables values
- terraform.tfstate -> contains all state of infrastructure
- terraform.tfstate.backup -> backup of state file
- .terraform -> contains all plugins and providers

### Terraform commands

useful cmd:

- terraform refresh
- terraform plan
- terraform apply
- terraform destroy

### Modules / Providers

Modules and providers are the same thing. They are the plugins that terraform uses to connect to the provider.
For example for AWS we used the aws provider.
For DigitalOcean we can use the digitalocean provider.
When you want to use a provider you have to add it to a .tf file. For example if you want to use the aws provider you
have to add it to the providers.tf file(also works in other files but this is a pattern).
These provders / modules do not come with terraform. You have to install them yourself. You can do this with the command
terraform init.

### Types of resources

- resource these are used to create the infrastructure
- data is used to query existing resources

### Variables

You can create vars in terraform.tfvars file.
This file is default and will be used by terraform and automaticly be loaded in.

If not set in terraform.tfvars you can set the vars in the command line with the -var flag.
Or you can use TF_VAR_ as a variable name and set it in the environment.
Another way to set a config is to use a file with the -var-file flag. This file can be in json or hcl format.
But you can also set default values for the variables in the variables.tf file.

The command is as follows to use a different file:

```bash 
terraform apply -var-file <file>
```

### provisioners

AWS has a user_data attribute that can be used to run a script on the server after it is created.
An alternative to using user_data that isn't in terraform's control as terraform initializes infra and then passes on
user_data to be executed to provider after infra is initialized.
Provisioner can executes commands in terraform.
Provisioner "remote-exec" does exec script on remote resource after it is created.
Provisioner "file" it copies files or dir from local to newly created resource.
Provisioner "local-exec" runs local exec after resource is created.

Provisioner are NOT recommended by terraform they can lead to unexpected behavior, breaks for this you can better use
ansible or chef.

### Modules

A group of resources that can be reused based on a logical unit.
It works with inputs (variables) and outputs (values) dependent on providers

### Remote State

Terraform can write data to remote data store to share state among team members and create backups this way.

### Best practices

- Only change state using TF cmd
- Set up remote storage backend for state file for team sharing like S3
- Use state locking to avoid concurrent edit conflicts
- Backup state file and enable versioning
- Use 1 state per environment
- Host TF scripts in own git repo
- CI for TF code
- Apply infra changes only through CD pipeline
  