#!/usr/bin/env bash
docker build -t raufabdul/exp-ng-pwa:latest .
docker tag raufabdul/exp-ng-pwa:latest raufabdul/exp-ng-pwa:latest
docker push raufabdul/exp-ng-pwa:latest
