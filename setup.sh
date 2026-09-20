#!/bin/bash
echo "Starting Docker containers..."
docker compose pull
docker compose up -d

echo "Waiting for database initialization (15 seconds)..."
sleep 15

echo "Creating admin user..."
docker compose run --rm panel php artisan p:user:make
echo "Setup complete! Open http://103.165.11.4 in your browser."
