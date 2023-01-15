## 8 - Build Automation & CI/CD with Jenkins

### What is Jenkins?

Jenkins is a open source automation server. It is written in Java and it is used to automate all sorts of tasks related
to building, testing and delivering or deploying software. Jenkins is the most popular automation server. It is used by
many big companies like Netflix, Spotify, Google, Facebook, Twitter, etc.
If you use docker you can map the docker socket inside the Jenkins container. This way you can use Jenkins to build
docker.
This is very useful when you want to build docker images inside Jenkins.
But you can also mount folders inside the Jenkins container.
This way you can use Jenkins to build applications that are not dockerized.

### What can Jenkins do?

- run tests
- build artifacts
- publish artifacts
- deploy artifacts
- send notifications
- integrates with other tools via plugins

### Roles for Jenkins

What can a role do in Jenkins?

#### admin

* manages Jenkins
* sets up cluster
* installs plugins
* backup data

#### user

* create actual jobs to run workflows

### Jenkins plugins

Depending on the type of job you want to run you need to install the right plugins.
For example if you want to run a job that builds a docker image you need to install the docker plugin.
Or if you want to run a job that builds a maven project you need to install the maven plugin.
You can also install for example npm inside the docker container where jenkins runs or if not dockerized on the machine
itself.

### Jenkins pages

* /jobs = where jobs stored in jenkins
* /workspace -> where git repos stored in jenkins when checked out in jobs

### Jenkins jobs

A pipeline is a collection of jobs that are executed in a specific order.
A Pipeline Job is a collection of Freestyle Jobs that are executed in a specific order.
You can trigger a pipeline job from a webhook. This means that you can trigger a pipeline job from a git push.
You can also trigger a pipeline job from a cron job.

### Jenkinsfile syntax

* "pipeline" - top level
* "agent" - where to exec
* "stages" and "steps" - where scripts run
* conditionals "when" "expression"
* "post" - exec some logic after all stages exec conditionals "always" "success" "failure"
* "tools" - access build tools (supports maven, gradle, jdk)
* "parameters" (params.name) -> Build with parameters option in Jenkisn GUI string(name, defaultValue, description)
  choice(name, choices, description) booleanParam(name, defaultValue, description)
* "input" - prompts user for input
* "message"
* "ok"
* "parameters"

### Credentials

There are 2 types of credentials:

1. Binds credentials to env can define credentials in Jenkins GUI"credentials("credentialsId")" binds credentials to env
   var need "Credentials Binding" Plugin
2. withCredentials([]) {}

#### Credentials in Jenkins

- scopes: system (only available on Jenkins server), global (access everywhere), project (scope to project, only
  available for multibranch pipeline)
- type (username w password, SSH, secret file etc.)

### Jenkins Shared Library

Jenkins can share code between jobs. This is very useful when you have multiple jobs that do the same thing.
You can create a shared library and use it in multiple jobs.

### Versioning the app

Each build tool or package manager has a way to version the app. For example maven has a pom.xml file where you can set
the version of the app. Or npm has a package.json file where you can set the version of the app.
A pipeline job can also version the app. For example you can use the build number of the job as the version of the app.
A artifact always needs a version and/or tag.

There are 3 parts of a versions <major>.<minor>.<patch>-<suffix> eg: v1.2.3-SNAPSHOT

* major: big changes, not backwards-compatible things can break big time
* minor: new but backward-compatible changes, API changes but not breaking
* patch: minor changes and bug fixes, no change to API or functionality mostly typos or small fixes
* suffix: provides more info about the version, eg: SNAPSHOT, ALPHA, BETA, RELEASE, etc.

