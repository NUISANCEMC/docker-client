# NUISANCE Docker Client

# Setup Instructions
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




