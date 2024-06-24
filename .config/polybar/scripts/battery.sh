#!/bin/bash

# Coloque aqui o local que identifica sem seu dispositivo está carregando ou descarregando
# IMPORTANTE ! A saída deve ser em binário, caso contrário resultará em erro!
is_plugged=$(cat /sys/class/power_supply/ADP1/online)

# Coloque aqui o local que identifica o número relativo a porcentagem da bateria de seu dispositivo
battery_level=$(cat /sys/class/power_supply/BAT1/capacity)

# EXTRA! Altere os ícones para qualquer um de sua preferência, assim como os valores da %
# EXTRA! Customize a cor do ícone começando com %{F#} e fechando com %{F-}
if [ "$is_plugged" -eq 1 ]; then
    icon="%{F#74c7ec}%{F-}"
    color="%{F#74c7ec}"
else
    if [ "$battery_level" -le 10 ]; then
        icon="%{F#F38BA8}%{F-}"
        color="%{F#F38BA8}"
    elif [ "$battery_level" -le 15 ]; then
        icon="%{F#F38BA8}%{F-}"
        color="%{F#F38BA8}"
    elif [ "$battery_level" -le 60 ]; then
        icon="%{F#f9e2af}%{F-}"
        color="%{F#f9e2af}"
    elif [ "$battery_level" -le 90 ]; then
        icon="%{F#89b4fa}%{F-}"
        color="%{F#89b4fa}"
    else
        icon="%{F#89b4fa}%{F-}"
        color="%{F#89b4fa}"
    fi
fi

echo "$icon $color$battery_level"

