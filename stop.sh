#!/bin/bash

if sudo test -f "/echo.pid"; then
  sudo kill -9 $(sudo cat /echo.pid)
fi

if sudo test -f "/root/echo.pid"; then
  sudo kill -9 $(sudo cat /root/echo.pid)
fi

if sudo test -f "/home/mthizo247/echo.pid"; then
  sudo kill -9 $(sudo cat /home/mthizo247/echo.pid)
fi