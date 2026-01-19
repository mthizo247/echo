#!/bin/bash

if sudo test -f "/echo.pid"; then
  echo "/echo.pid exists"
fi

if sudo test -f "/root/echo.pid"; then
  echo "/root/echo.pid exist"
fi

if sudo test -f "/home/mthizo247/echo.pid"; then
  echo "/home/mthizo247/echo.pid exist"
fi

exit

#sudo kill -9 $(cat /echo.pid) || true
#sudo kill -9 $(cat /root/echo.pid) || true
#sudo kill -9 $(cat /home/mthizo247/echo.pid) || true