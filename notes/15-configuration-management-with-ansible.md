## 15 - Configuration Management with Ansible

### Basics

Ansible is a great tool for configuration management, it's agentless, idempotent, and can be used to automate tasks.
It goes hand to hand with Terraform, as Terraform can be used to provision infrastructure, and Ansible can be used to
configure it.
Because Ansible is agentless, it can be used to configure ephemeral servers, which is great for CI/CD pipelines.
The Ansible configuration file is called ansible.cfg, and it's located in the /etc/ansible directory.
The ansible.cfg file can be used to set default values for ansible, such as the inventory file, the remote user, and the
private key file.
The inventory file is a file that contains the list of hosts that ansible will use.
The inventory file can be in the ini format, or the yaml format.
The ini format is the default format, and it looks like this:

Because of yaml syntax, the yaml format is more readable and is really easy to use.
It is extremely easy to use ansible, and it's really easy to get started with it.
Ansible uses playbooks, which are a list of tasks that will be executed on the hosts.
The tasks are executed in the order that they are defined in the playbook.
It check if the task has already been executed, and if it has, it will skip it.

Ansible uses modules, which are the building blocks of ansible.
You can also create your own modules, and you can share them with the community.
Ansible uses plugins, which are used to extend the functionality of ansible.
You can pass arguments to the modules, and you can also pass arguments to the plugins.
Ansible collection is a packaging format for bundling and distributing ansible content.
Ansible Galaxy is an online hub for finding and sharing ansible community content.
Roles are made up of tasks, handlers, templates, files, vars, defaults, meta, and documentation.

### Commands

ansible all -i hosts -m ping
ansible <HOST_GROUP || HOST> -i hosts -m <MODULE>
ansible-playbook -i <HOSTS_FILE> <PLAYBOOK_YAML_FILE>
ansible-galaxy collection install <COLLECTION_NAME>
-vv (flag to display info about ansible config)
ansible-inventory -i <INVENTORY_FILE> --list (or --graph)


