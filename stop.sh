#!/bin/bash

sudo kill -9 $(cat /echo.pid) || true
sudo kill -9 $(cat /root/echo.pid) || true
sudo kill -9 $(cat /home/mthizo247/echo.pid) || true