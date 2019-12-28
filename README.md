# EFK-traefik-portainer
Elasticsearch, Fluentd, and Kibana (EFK stack) + Traefik docker-compose.yaml files (+ Portainer)

##Download
```dif
sudo mkdir /opt/containers
sudo cd /opt/containers
sudo wget https://github.com/pomazanbohdan/EFK-traefik-portainer/archive/master.zip
sudo unzip master.zip
```

## Tune server
```dif
sudo bash preinstall.sh
```
## You domain
Change all DOMAIN.COM in docker-compose.yaml


## Password
Change password in traefik.http.middlewares.traefik-auth.basicauth.users (now 
admin:admin)
- go https://www.htaccesstools.com/htpasswd-generator/
- gen string for you login password
- double  all $ in hash  password:
 ```dif
 $apr1$gm.YsXfy$HAPYyNAfPECxFGAvxXUeN/ -> $$apr1$$gm.YsXfy$$HAPYyNAfPECxFGAvxXUeN/
 ```
- paste in  docker-compose.yaml in traefik.http.middlewares.traefik-auth.basicauth.users


## Create network
```dif
sudo docker network create proxy
```
## Launch
- First start traefik and check in browser

- After launch AFK stack


## Note
- kibana no login/pass
- Elasticsearch port 80 and not config login/password 