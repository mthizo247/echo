#!/bin/bash

kill -9 $(cat /echo.pid)
kill -9 $(cat /root/echo.pid)
kill -9 $(cat /home/mthizo247/echo.pid)