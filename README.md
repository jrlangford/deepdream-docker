#Deep Dream Docker

This is a docker container that can run Google's [ deepdream ] ( https://github.com/google/deepdream ) repo.

##Start Jupyter
```
$ ./run.sh
```
The host's 8888 port is forwarded to Jupyter's UI port so you can access it in the following way:
```
<hostname>:8888
```
Now you can access the `deepdream` directory and open the notebook `dream.ipynb`
Follow the notebook's intructions to try deep dream.

The first run takes longer since the repo's images are fetched from the docker hub.

##Stop IPython
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
