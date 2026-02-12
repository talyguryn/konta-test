#!/bin/bash
# Post-deployment success hook
# Runs after successful deployment

echo "=== Deployment successful ==="
echo "Timestamp: $(date)"
echo "Deployed commit: $(git rev-parse HEAD 2>/dev/null || echo 'unknown')"

# Example: Send notification
# curl -X POST https://hooks.slack.com/services/YOUR_WEBHOOK \
#   -d "text=Deployment successful at $(date)" 2>/dev/null || true

echo "✓ Success hook completed"
