# Update n8n Self-Hosted npm version

This guide explains how to update your self-hosted n8n instance to the latest version using npm.

## Prerequisites

- Node.js and npm installed on your server
- Existing n8n installation
- Backup of your workflows and data

## Update Steps

1. Stop the running n8n process:

   ```bash
   pm2 stop n8n
   # or
   killall node
   ```

2. Update n8n using npm:

   ```bash
   npm install n8n -g
   ```

3. Start n8n again:

   ```bash
   pm2 start n8n
   # or
   n8n start
   ```

## Usage Example

After updating, you can verify the version:
