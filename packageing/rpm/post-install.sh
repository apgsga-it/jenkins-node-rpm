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
	echo "Change to owner to ${jenkinsNodeName}"
	chown -R ${jenkinsNodeName}:${jenkinsNodeName} ${jenkinsNodeDir}
	chmod 700 ${jenkinsNodeDir}/.ssh/authorized_keys 
fi

exit 0