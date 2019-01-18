#!bash
# post-install.sh
#
set -x
echo "Post Install script: \$1"


if [ "\$1" = "1" ]; then
	echo "Installation and configuration of Java Environment started ..."
	WORK_DIR=`mktemp -d -p  ${jenkinsNodeDir}`
	echo "Created temp dir \$WORK_DIR"
	curl --output \$WORK_DIR/${javaDist} -L ${distRepoUrl}/${javaDist}
	tar xvf \$WORK_DIR/${javaDist} -C ${jenkinsNodeDir}
	rm -rf \$WORK_DIR
	echo "Deleted temp working directory \$WORK_DIR"
	echo "Installation and configuration of Java Environment done."
	echo "Fixing owner and rights "
	chown -R ${jenkinsNodeName}:${jenkinsNodeGroup} ${jenkinsNodeDir}
	chown -R ${jenkinsNodeName}:${jenkinsNodeGroup} ${jenkinsNodeDataDir}
	chown -R ${jenkinsNodeName}:${jenkinsNodeGroup} ${jenkinsNodeHomeDir}
	chmod 700 ${jenkinsNodeHomeDir}
	chmod 700 ${jenkinsNodeHomeDir}/.ssh
	chmod 600 ${jenkinsNodeHomeDir}/.ssh/authorized_keys 

fi

exit 0