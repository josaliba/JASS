#!/bin/bash

echo "hello world"
docker compose down
docker volume prune -a
docker compose up -d
sudo rm -rf var/sessions/
sudo rm -rf var/cache/
symfony console oro:install -n  --application-url=https://jass.wip --env=dev --user-name=admin --user-email=admin@jass.com --user-firstname=Joseph --user-lastname=Saliba --user-password=admin --sample-data=n --organization-name="JASS" --language=en --formatting-code=en --timeout=10000
