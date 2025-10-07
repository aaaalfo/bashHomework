

USER_NAME=$(whoami)

echo "USER     PID     %CPU   %MEM   COMM"

ps aux | grep "^$USER_NAME" | sort -rk 4 | awk '{printf "%-8s %-8s %-6s %-6s %s\n", $1, $2, $3, $4, $11}'
