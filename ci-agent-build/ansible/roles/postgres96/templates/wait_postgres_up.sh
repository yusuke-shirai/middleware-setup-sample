#!/bin/sh

for i in {0..9}; do
  sleep 5;
  psql -U postgres -h localhost -c "select 1;" 2>&1 > /dev/null;
  if [[ $? -eq 0 ]]; then
    exit 0;
  else
    echo "Waiting for postgres up.";
  fi;
done
exit 1;
