
USER_NAME=$(whoami)

ps aux | grep "^$USER_NAME" | sort -rk 4 | 
