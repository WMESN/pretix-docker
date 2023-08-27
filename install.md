## Install Pretix
``` bash
cd /opt/esn_germany_docker/pretix
# Fill .env File
# Fill and rename example.pretix.cfg to pretix.cfg

mkdir -p pretix
mkdir -p db
sudo chown -R $USER:$USER pretix
sudo chown -R $USER:$USER db
docker compose up -d
```

