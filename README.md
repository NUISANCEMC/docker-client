## NUISANCE Docker Client

Docker allows NUISANCE to be ran on Windows or Mac machines by easily pulling images from docker hub.
Docker must be installed before using these scripts and root access is required to install it.
- Docker for Mac (https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)
- Docker for Windows (https://docs.docker.com/engine/installation/)


### Setup Instructions
First, edit the setup.sh script to choose a valid mount point. The Default is set to `$HOME/NUISANCEMC`.
You should choose somewhere you have read/write access as this is where you will be storing MC files for the nuisance client.
```
$ emacs -nw setup.sh

# Set docker mounting point (default is $HOME/NUISANCEMC)
# This can be anywhere you have read/write access and will be
# where you save your MC inputs/outputs
export NUISANCE_MOUNT="$HOME/NUISANCEMC/"
```

Next, run the `setup.sh` script to setup environement
``` 
$ source setup.sh 
Setting up NUISANCE docker client.

Client Tag    : nuisancemc/nuisanceclient
Version Tag   : :latest
Mount Point   : /Users/patrickstowell/NUISANCEMC/
Mount Options :
Run Command   : 'nuisanceclient'
```

Next, run the `build.sh` script to pull the client image from docker hub and make the mount point folder if not already created.
```
$ source build.sh
Pulling docker image from docker hub
docker pull nuisancemc/nuisanceclient:latest
latest: Pulling from nuisancemc/nuisanceclient
d9aaf4d82f24: Pull complete
87c609607de1: Downloading [=====================>                             ]  79.99MB/188.8MB
d4767c61d4c8: Downloading [=============================>                     ]  92.96MB/159MB
2b6b5241c396: Download complete
a2555975cf39: Download complete
f452462d594d: Downloading [===============>                                   ]   11.3MB/37.02MB
a198305d6741: Waiting
```
wait for the images to be downloaded, until eventually all downloads and extractions are complete.
```
$ source build.sh
Pulling docker image from docker hub
docker pull nuisancemc/nuisanceclient:latest
latest: Pulling from nuisancemc/nuisanceclient
d9aaf4d82f24: Pull complete
87c609607de1: Pull complete
d4767c61d4c8: Pull complete
2b6b5241c396: Pull complete
a2555975cf39: Pull complete
f452462d594d: Pull complete
a198305d6741: Pull complete
Digest: sha256:1f7fd2e4e53d0177f36689221940976d1e0da88db1a0e00a4747dfb67ee59ea6
Status: Downloaded newer image for nuisancemc/nuisanceclient:latest
```

Finally, test the docker container actually runs by using the `nuisanceclient` alias. You should be able to see all the files inside your mount point from the starting working directory of the container and nuisance should already be setup.
```
$ nuisanceclient
[INFO]: Adding NuWro library paths to the environment.
[INFO]: Adding PYTHIA6 library paths to the environment.
[INFO]: Adding GENIE paths to the environment.
[root@dea96e00379d NUISANCEMC]#
```

### Run Instructions
First setup the docker-client environement by sourcing the setup.sh script.
```
$ source setup.sh
Setting up NUISANCE docker client.

Client Tag    : nuisancemc/nuisanceclient
Version Tag   : :latest
Mount Point   : /Users/patrickstowell/NUISANCEMC/
Mount Options :
Run Command   : 'nuisanceclient'
```
To use the docker container you should place any files required inside the $NUISANCE_MOUNT point you defined in the setup script before you run the container.
```
$ cp mygeniefile.root $NUISANCE_MOUNT/
```
Once you are happy that the required files are located in that folder you can run the container using the alias
```
$ nuisanceclient
[INFO]: Adding NuWro library paths to the environment.
[INFO]: Adding PYTHIA6 library paths to the environment.
[INFO]: Adding GENIE paths to the environment.
[root@dea96e00379d NUISANCEMC]#
```
You should be able to see the files you copied to the $NUISANCE_MOUNT area.
```
$ ls $PWD/*.root
/Users/patrickstowell/NUISANCEMC/mygeniefile.root
```
NUISANCE is already setup when you log in so you can use any of the standard applications.
```
$ which nuiscomp 
/NUISANCEMC/nuisance/v2r6/build/Linux/bin/nuiscomp
$ nuisflat -i GENIE:mygeniefile.root -n 100000 -f GenericFlux -o flatgeniefile.root
```


## Linux docker
If docker is installed on your Linux machine it is possible to pull and run these images provided you replace 
```
docker
```
with
```
sudo docker
```

However, we recommend that instead you either build nuisance locally or try to obtain one of our binaries for your build system to avoid docker altogether given that NUISANCE is designed to build on Linux systems.
