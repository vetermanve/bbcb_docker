# bbcb_docker mac run 

Run on a mac
## 1 - Install homebrew 
https://hombrew.io  

## 2 - install XQuartz

```
brew cask install XQuartz
```

Then log out and log in to init XQuartz
Open it

```$xslt
open -a Xquartz
```

Go to Preferences and enable "Allow connections from network clients" in "Security" tab


Then you should actually enable connection from docker to XQuartz by running 

```bash
xhost +
```


## 3 - install socat


```bash
brew install socat
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" 
```
## 4 - install docker for mac

https://docs.docker.com/desktop/mac/install/

## 5 - run docker container via docker-compose

Open terminal an go to this project directory

```bash 
docker-compose up
```

# Troubleshooting links

- https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc 
- https://unix.stackexchange.com/questions/85782/error-no-protocol-specified-when-running-from-remote-machine-via-ssh 
