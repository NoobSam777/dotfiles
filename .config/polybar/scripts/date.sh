#!/bin/bash

date=$(date +%H:%M)
manha="6:00"
tarde="13:00"
noite="18:00"

if [[ "$date" > "$manha" && "$date" < "$tarde" ]]; then
    icon=""
    elif [[ "$date" > "$tarde" && "$date" < "$noite" ]]; then
        icon=""
    elif [[ "$date" > "$noite" && "$date" < "$manha" ]]; then
        icon=""
fi

echo "$(date '+%a,%d %H:%M') $icon"
