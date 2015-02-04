#!/bin/sh

echo "postgres://$POSTGRES_PORT_5432_TCP_ADDR/$HELIOS_DB_NAME" > .env
bundle exec unicorn -p 8080

