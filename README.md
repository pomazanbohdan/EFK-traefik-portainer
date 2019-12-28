# EFK-traefik-portainer
Elasticsearch, Fluentd, and Kibana (EFK stack) + Traefik docker-compose.yaml files (+ Portainer)

sudo mkdir /opt/containers
sudo cd /opt/containers
sudo wget https://github.com/pomazanbohdan/EFK-traefik-portainer/archive/master.zip
sudo unzip master.zip

1. sudo bash preinstall.sh (tune server)
2. Change all DOMAIN.COM in docker-compose.yaml
3. Change password in traefik.http.middlewares.traefik-auth.basicauth.users (now admin:admin)
- go https://www.htaccesstools.com/htpasswd-generator/
- gen string for you login password
- double  all $ in hash  password - $apr1$gm.YsXfy$HAPYyNAfPECxFGAvxXUeN/ -> $$apr1$$gm.YsXfy$$HAPYyNAfPECxFGAvxXUeN/
- paste in  docker-compose.yaml in traefik.http.middlewares.traefik-auth.basicauth.users
3. "sudo docker network create proxy"
4. First start traefik and check in browser
5. After launch AFK stack
- kibana no login/pass
- Elasticsearch port 80 and not config login/password