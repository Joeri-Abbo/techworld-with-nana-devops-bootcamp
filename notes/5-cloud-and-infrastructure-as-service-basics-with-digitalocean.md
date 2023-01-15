## 5 - Cloud & Infrastructure as Service Basics with DigitalOcean

DigitalOcean is a cloud provider that offers a wide range of services. 
It is a Infrastructure as a Service (IaaS) provider.
This means that you can use DigitalOcean to create virtual machines, databases, load balancers, etc.

DigitalOcean also offers a lot of services that are very useful for developers.
For example you can create a droplet (virtual machine) with a preinstalled docker image.
This is very useful when you want to run a docker image inside a virtual machine.

It makes the setup of a virtual machine very easy.
You select the image you want to use and the size of the virtual machine.
And you can also add a ssh key to the virtual machine to make it easier to connect to the virtual machine.

Als you can network the virtual machines together. 
Or you can open a port to the internet. 
We use this to expose a service to the internet like Nexus that runs native on the machine.
But we also use this to expose a service to the internet like a docker container that runs inside a virtual machine with the Jenkins setup.