# EFK-traefik-portainer
Elasticsearch, Fluentd, and Kibana (EFK stack) + Traefik docker-compose.yaml files (+ Portainer)

1. Change all DOMAIN.COM
2. Change password in traefik.http.middlewares.traefik-auth.basicauth.users (now admin:admin)
- 2.1 go https://www.htaccesstools.com/htpasswd-generator/
- 2.2 gen string for you login password
- 2.3 duble all $ in hash  password - $apr1$gm.YsXfy$HAPYyNAfPECxFGAvxXUeN/ -> $$apr1$$gm.YsXfy$$HAPYyNAfPECxFGAvxXUeN/
- 2.3 paste in  docker-compose.yaml in traefik.http.middlewares.traefik-auth.basicauth.users
3. docker network create proxy 
4. First start traefik and check in brauser
5. After launch AFK stack
5.1 kibana no login/pass
5.2 Elasticsearch port 80 and not config login/password