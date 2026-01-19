#!/bin/bash

if [ -f /echo.pid ]; then
  echo "/echo.pid exists"
elif [ "/root/echo.pid" ]; then
  echo "/root/echo.pid exist"
elif [ "/home/mthizo247/echo.pid" ]; then
  echo "/home/mthizo247/echo.pid exist"
else
  echo "Opps! file not found"
fi

#sudo kill -9 $(cat /echo.pid) || true
#sudo kill -9 $(cat /root/echo.pid) || true
#sudo kill -9 $(cat /home/mthizo247/echo.pid) || true