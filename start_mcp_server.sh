#!/bin/bash
# MCP MariaDB Server Startup Script

# Change to the project directory
cd "/Users/josegonzalez/Desktop/Programación/mcp_mariadb"

# Activate the virtual environment
source .venv/bin/activate

# Run the server
exec python src/server.py "$@" 