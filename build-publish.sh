#!/usr/bin/env bash
docker build -t exp-ng-pwa:latest .
docker tag exp-ng-pwa:latest raufabdul/exp-ng-pwa:latest
docker push raufabdul/exp-ng-pwa:latest
