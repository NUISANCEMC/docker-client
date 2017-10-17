## NUISANCE Docker Client

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


