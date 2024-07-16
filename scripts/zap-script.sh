#!/bin/bash

docker pull zaproxy/zap2docker-stable
docker run -i zaproxy/zap2docker-stable zap-baseline.py -t "https://kenken64.github.io/bitcoin-order-app/" -l PASS > zap_baseline_report.html

echo $? > /dev/null