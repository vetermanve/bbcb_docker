# bbcb_docker mac run 

Run on a mac
## 1 - Install homebrew 
https://hombrew.io  

## 2 - install XQuartz

```
brew cask install XQuartz
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


