#!bash 
# pre-install.sh
#
set -x 
echo "Pre Install script: \$1"

if [ "\$1" = "1" ]; then
	
	echo "Creating user: ${jenkinsNodeName}"
	/usr/sbin/useradd -r -c "${jenkinsNodeName} user" ${jenkinsNodeName}  2> /dev/null || :

fi

exit 0