#Deep Dream Docker

This is a docker container that can run Google's [ deepdream ] ( https://github.com/google/deepdream ) repo.


##Build the containers
```
$ ./build-containers.sh
```

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

##Stop IPython
```
$ ./stop.sh
```


