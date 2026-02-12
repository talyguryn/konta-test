#!/bin/bash
# Pre-deployment hook
# Runs before reconciliation

set -e

echo "=== Pre-deployment checks ==="

# Check if docker-compose files are valid
for app in apps/*/; do
    if [ -f "$app/docker-compose.yml" ]; then
        app_name=$(basename "$app")
        echo "Validating $app_name..."
        docker compose -f "$app/docker-compose.yml" config > /dev/null
        echo "✓ $app_name is valid"
    fi
done

echo "✓ All pre-deployment checks passed"
