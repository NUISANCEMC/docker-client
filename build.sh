#!/bin/sh
if [ ! -e $NUISANCE_MOUNT ]
then
    echo "Making docker mount point"
    mkdir -v $NUISANCE_MOUNT
fi

echo "Pulling docker image from docker hub"
echo docker pull ${NUISANCE_DOCKERCLIENT}${NUISANCE_DOCKERVER}
docker pull ${NUISANCE_DOCKERCLIENT}${NUISANCE_DOCKERVER}