#!bash 
# post-uninstall.sh
#
echo "Post Uninstall script: \$1"
if [ "\$1" = "0" ]; then
	echo "Removing user ${jenkinsNodeName}"
	/usr/sbin/userdel -r ${jenkinsNodeName} 2> /dev/null || :
	echo "Removing group ${jenkinsNodeName}"
	/usr/sbin/groupdel "${jenkinsNodeName}" 2> /dev/null || :
fi
exit 0