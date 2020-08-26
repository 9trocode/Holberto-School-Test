#!/bin/sh

docker-compose build && docker-compose run web rake db:setup && docker-compose up