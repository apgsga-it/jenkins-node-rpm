# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

JAVA_HOME=${jenkinsNodeDir}/${javaDir};export JAVA_HOME
PATH=\$HOME/bin:\$JAVA_HOME/bin:\$PATH; export PATH


