default_logs="C:/bsg_cache"
mkdir -p $default_logs
if ! [ -f "$default_logs"/input.txt ]; then
  echo "" > "$default_logs"/input.txt
fi
f=C:/bsg_cache/input.txt
if [ -z "$(cat "$default_logs"/input.txt)" ]; then
  read -p "Please Enter Parent Path of Battlestate Games Folder:" parent
  echo "$parent" > "$default_logs"/input.txt
else
  parent=$(cat "$default_logs"/input.txt)
fi

FILE=$parent/'Battlestate Games/Logs/'
EXECU=$parent/'Battlestate Games/bsglauncher/bsglauncher.exe'
if [ -d "$FILE" ] ; then #if logs folder exists
  if [ "$(ls -A "$FILE")"  ]; then #if logs files exist
     for file in "$FILE"/*; do
        echo "${file##*/}" >> C:/bsg_cache/logs.txt 2>&1
     done
     rm -f -r "$FILE"/*
     echo "Directory $FILE Cleared."
   fi
else
   echo "Directory $FILE does not exist" >&2
fi
(exec "$EXECU") &
