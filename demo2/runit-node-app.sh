#!/bin/bash

cd /root/node-app
exec npm start >>/var/log/node-app.log 2>> /var/log/node-app-err.log
