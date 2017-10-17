#!/bin/sh
export NUISANCE_DOCKER_OS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export NUISANCE_MC_MOUNT="$NUISANCE_DOCKER_OS/../../"
export NUISANCE_DOCKER="nuisance/client"
alias nuisanceos='docker run -it --rm -v $NUISANCE_MC_MOUNT:$NUISANCE_MC_MOUNT:cached -v $PWD:$PWD:cached -w $PWD $NUISANCE_DOCKER bash'
alias nuisanceosdata='docker run -it --rm -v $NUISANCE_MC_MOUNT:$NUISANCE_MC_MOUNT:cached -v /Volumes/Transcend/:/Volumes/Transcend/:cached -v $PWD:$PWD:cached -w $PWD $NUISANCE_DOCKER bash'

alias nuisanceos_nuiscomp='docker run -it --rm -v $NUISANCE_MC_MOUNT:$NUISANCE_MC_MOUNT:cached -v $PWD:$PWD:cached -v /Volumes/Transcend/:/Volumes/Transcend/:cached -w $PWD $NUISANCE_DOCKER runnuiscomp'