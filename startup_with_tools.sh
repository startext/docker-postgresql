#!/usr/bin/env bash

docker-compose -f docker-compose.yaml -f docker-compose.tools.yaml up -d && docker-compose logs -f
