#!/bin/bash

# Check if Sail is running by looking for 'laravel.test' in Docker containers
if [ -z "$(docker ps --format '{{.Names}}')" ]; then
    echo "Sail is not running. Starting Sail..."
    ./vendor/bin/sail up -d
else
    echo "Sail is already running."
fi