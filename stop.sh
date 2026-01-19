#!/bin/bash

if sudo test -f "/echo.pid"; then
  sudo kill -9 $(sudo cat /echo.pid) || true
fi

if sudo test -f "/root/echo.pid"; then
  sudo kill -9 $(sudo cat /root/echo.pid) || true
fi

if sudo test -f "/home/mthizo247/echo.pid"; then
  sudo kill -9 $(sudo cat /home/mthizo247/echo.pid) || true
fi