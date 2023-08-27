## Install Pretix
``` bash
cd /opt/esn_germany_docker/pretix
# Fill .env File, and pretix.cfg

mkdir -p pretix
mkdir -p db
sudo chown -R $USER:$USER pretix
sudo chown -R $USER:$USER db
docker compose up -d
```

