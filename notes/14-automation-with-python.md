## 14 - Automation with Python

### AWS

AWS has its own python package named boto3. With boto3 you can automate aws services not as efficent as Terraform for
new infrastructures but for existing infrastructures it is very useful.
For example you can create a script that will create a snapshot of all your ec2 instances and store them in s3. This is
very useful for backups. Or you can add tags to ec2 machines in a specif region. Or you can create a script that will
monitor your ec2 instances and send you an email when the cpu usage is above a certain threshold.
Boto3 - python library for aws

### client vs resource

Client are used to get data form AWS in a low-level way. You can use the client to get all the instances in a region.
The client returns the data in a dictionary. The client is the low-level API of boto3.

Resource is a higher level API of boto3. It is more object-oriented. It is a wrapper over the client.
It is more easy then the aws CLI. You need a higher level of programing experience to use the client bacause it
object-oriented.

### terraform vs python

Terraform is more scoped to infrastructure as code.
It is more high-level. It is more easy to use then python.
But it is not as flexible as python. Terraform is more limited in what you can do.
Is it a downside. No it is not Terraform is build for infrastructure as code.
Not for being a programing language.
Technically you can do everything with terraform that you can do with python. But it is not as easy as with python. Also
you have to write more code because for example if you want to keep states or if you want to destory everything in
Terraform it is only one command but in python you have to write a script for that.

Boto3 can interact with all aws services. It is great for automation of backups and automation of task and monitoring
etc.
Python also has greate libaries for creating web UIs. For example Flask or Django. So you can create a web UI to
interact with the AWS services with Boto3.

### CODE

View github.com:Joeri-Abbo/techworld-with-nana-my-python-project for the source code.
Per lecture there is a commit with the code for that lecture.
