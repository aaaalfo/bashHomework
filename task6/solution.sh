
USER_NAME=$(whoami)

echo ps aux | grep "^$USER_NAME" | sort -rk 4 | 
