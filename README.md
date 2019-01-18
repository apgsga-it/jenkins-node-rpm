# jenkins-node-rpm

Gradle Build, which builds a rpm using https://github.com/nebula-plugins/gradle-ospackage-plugin/wiki/RPM-Plugin  for installing a Jenkins node on a target system 

The Node is installed to be "self-contained": 

with it's own java dist

a user with an enviroment, which points it's own java dist


The build parameters are: 

-P=<serviceName> : The service name, which the Node ins responsible for

-P=<group> : The group under which the agent , will run

