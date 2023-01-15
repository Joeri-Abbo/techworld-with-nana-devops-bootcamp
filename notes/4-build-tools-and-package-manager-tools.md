## 4 - Build Tools and Package Manager Tools

### What is a artifact?

A artifact is a file that is produced by a build process.
It is a binary or source code that is used to deploy an application.
For example a jar file is a artifact.
Java can produce a jar file or a war file.

#### What is inside a jar file?

A jar file is a zip file that contains a manifest file and the classes and resources of the application.
The manifest file contains information about the application like the main class and the dependencies.
For example (Java)maven uses the pom.xml as it manifest file.
Node uses the package.json as it manifest file.

### What is a artifactory and why do we need it?

A artifactory is a repository that stores artifacts.
Nexus is a example of a artifactory. It stores the builded artifacts and the dependencies.
You can also push for example docker images to a artifactory as Nexus.

#### Why Docker

It makes the process universal. You can run the same docker image on any machine. And you have less types of artifacts
to
manage. It also make the easier because you can use the same docker image for development, testing and production.








