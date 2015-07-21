#Deep Dream Docker

This is a docker container that can run Google's [ deepdream ] ( https://github.com/google/deepdream ) repo.

##Start Jupyter
Jupyter is an interactive notebook environment running in a web server.
Google's deepdream is distributed as a python notebook.
```
$ ./run.sh
```
The host's 8888 port is forwarded to Jupyter's UI port so you can access it in the following way:
```
<hostname>:8888
```
Now you can access the `deepdream` directory and open the notebook `dream.ipynb`i.
Follow the notebook's intructions to try deep dream.

The first run takes longer since the repo's container images and a deep neural network model are fetched from the docker hub.

##Stop Jupyter
```
$ ./stop.sh
```

##Build the containers
Building the images is not necessary since they are fetched from the docker hub.
If, for any reason, you still wish to build them locally the following script
does the job.
```
$ ./build-containers.sh
```
