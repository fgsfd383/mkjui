#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7b463df2-6bae-4d9b-9950-799d434b93e5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

