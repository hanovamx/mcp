# MariaDB MCP Server Setup Guide

## ✅ **Setup Complete!**

Your MariaDB MCP Server is now configured and ready to use with Claude Desktop.

### **What's Configured:**
- **Database**: `rroutdoor-prod-v2` (23 tables)
- **Connection**: Unix socket authentication (`/tmp/mysql.sock`)
- **User**: `josegonzalez@localhost`
- **Features**: Full database access + OpenAI embeddings
- **Mode**: Read/Write enabled

### **Files Created:**
- `.env` - Database connection configuration
- `start_mcp_server.sh` - Startup script for Claude Desktop
- `claude_desktop_config.json` - Example configurations (3 variations)

### **How to Use:**

#### **1. Restart Claude Desktop**
Close and reopen Claude Desktop to load the new configuration.

#### **2. Available Commands in Claude:**
Once connected, you can ask Claude to:
- "Show me all tables in my database"
- "What's the schema of the users table?"
- "List all databases"
- "Show me the foreign key relationships for the circuits_events table"
- "Create a vector store for storing documents"
- "Search for similar content in my data"

#### **3. Example Queries:**
```
"Analyze the structure of my rroutdoor-prod-v2 database"
"Show me the relationships between circuits, events, and teams"
"What are the payment transaction tables?"
"Create a summary of the user management tables"
```

### **Troubleshooting:**

#### **If connection fails:**
1. Check that MariaDB is running: `mariadb -e "SELECT 1"`
2. Verify socket exists: `ls -la /tmp/mysql.sock`
3. Test startup script: `./start_mcp_server.sh --help`

#### **Check logs:**
- MCP Server logs: `logs/mcp_server.log`
- Claude Desktop logs: Available in Claude Desktop's developer console

### **Configuration Files:**

#### **Current Claude Desktop Config:**
```json
{
  "mcpServers": {
    "MariaDB_Server": {
      "command": "/Users/josegonzalez/Desktop/Programación/mcp_mariadb/start_mcp_server.sh"
    }
  }
}
```

#### **Environment Variables (.env):**
```bash
# Database
DB_HOST=
DB_PORT=
DB_USER=josegonzalez
DB_PASSWORD=
DB_NAME=rroutdoor-prod-v2
DB_SOCKET=/tmp/mysql.sock

# Features
MCP_READ_ONLY=false
EMBEDDING_PROVIDER=openai
```

### **Next Steps:**
1. **Restart Claude Desktop** 
2. **Test the connection** by asking Claude about your database
3. **Explore your data** using natural language queries
4. **Create vector stores** for semantic search capabilities

### **Support:**
If you encounter issues, check the logs in `logs/mcp_server.log` for detailed error information. 