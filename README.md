# jenkins-node-rpm

Gradle Build, which builds a simple rpm for installing a Jenkins node in the apg it enviroment
It installs a script with reasonable defaults , which can be overriden with parameters.

The Node is installed to be "self-contained": 

a own java dist

a user / group, with an enviroment, which points it's own java dist


The build parameters are: 

-P=<serviceName> : The service name, which the Node ins responsible for

-P=<javaDist> : The tar gzip , which is assumed to be in 

-P=<distRepoUrl> : Repository Url from which the Java Dist is downloaded