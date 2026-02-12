#!/bin/bash
# Post-deployment failure hook
# Runs if deployment fails

echo "=== Deployment FAILED ==="
echo "Timestamp: $(date)"

# Example: Alert
# echo "Deployment failed! Check logs." | mail -s "Konta Alert" admin@example.com

# Example: Slack notification
# curl -X POST https://hooks.slack.com/services/YOUR_WEBHOOK \
#   -d "text=❌ Deployment failed at $(date)" 2>/dev/null || true

echo "✗ Failure hook completed"
