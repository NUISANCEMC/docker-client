## NUISANCE Docker Client

### Setup Instructions
1. Edit the setup.sh script to choose a valid mount point.
- Default is '''$HOME/NUISANCEMC'''

2. Run the setup.sh script to setup environement
''' source setup.sh '''

3. Run the build.sh script 
''' source build.sh '''
- This will pull the image from docker hub
- The script will also make the mount point if it is not found.

4. Test the docker container
''' nuisanceclient '''
- You should be able to see all the files inside your mount point from the starting working directory of the container.


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
$ ls $PWD/
/Users/patrickstowell/NUISANCEMC/mygeniefile.root
```
NUISANCE is already setup when you log in so you can use any of the standard applications.
```
$ which nuiscomp /NUISANCEMC/nuisance/v2r6/build/Linux/bin/nuiscomp
$ nuisflat -i GENIE:mygeniefile.root -n 100000 -f GenericFlux -o flatgeniefile.root
```


