#!bash 
# pre-install.sh
#
set -x 
echo "Pre Install script: \$1"

if [ "\$1" = "1" ]; then
	
	echo "Creating user: \"${jenkinsNodeName}\""
	/usr/sbin/useradd -r -c "${jenkinsNodeName} user" ${jenkinsNodeName}  2> /dev/null || :
	echo "Adding Sudoers Rights for \"${jenkinsNodeName}\""
	echo "Defaults:${jenkinsNodeName} "'!'"requiretty" > /etc/sudoers.d/${jenkinsNodeName}
	yumRepoOptions="--disablerepo=* --enablerepo=apg-artifactory*"
	echo "${jenkinsNodeName} ALL= (root) NOPASSWD: \$( which yum ) clean all \${yumRepoOptions}" >> /etc/sudoers.d/${jenkinsNodeName}
	echo "${jenkinsNodeName} ALL= (root) NOPASSWD: \$( which yum ) -y install \${yumRepoOptions} apg-jadas-service-*" >> /etc/sudoers.d/${jenkinsNodeName}
	echo "${jenkinsNodeName} ALL= (root) NOPASSWD: "'!'"\$( which yum ) -y install \${yumRepoOptions} apg-jadas-service-*..*" >> /etc/sudoers.d/${jenkinsNodeName}
	echo "${jenkinsNodeName} ALL= (root) NOPASSWD: "'!'"\$( which yum ) -y install \${yumRepoOptions} apg-jadas-service-* *" >> /etc/sudoers.d/${jenkinsNodeName}
fi

exit 0