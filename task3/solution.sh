LOGFILE="$1"


info_count=$(grep "INFO" "$LOGFILE"  | wc -l)
error_count=$(grep "ERROR" "$LOGFILE" | wc -l)
warn_count=$(grep "WARN" "$LOGFILE"  | wc -l)

echo "INFO :  $info_count"
echo "ERROR:  $error_count"
echo "WARN :  $warn_count"