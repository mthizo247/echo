#!/bin/bash

git pull origin main
mvn clean install
sudo cp echo.conf /etc/monit/conf.d/echo.conf
sudo monit reload
sudo monit -t