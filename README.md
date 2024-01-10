Make docker enviroment (inside of the container):
```
sh -c "$(wget https://raw.githubusercontent.com/LoBrol/jupyterlab/main/setup.sh -O -)"
```

Make docker image (host):
```
docker commit <docker name> jupyterlab-server
```

Delete old docker (host):
```
docker stop <docker name>
docker rm <docker name>
```

Make new docker with jupyter auto-start (host):
```
docker run --entrypoint "/root/start-jupyter.sh" -p 8888:8888 --name jupyterlab -d jupyterlab-server
```
