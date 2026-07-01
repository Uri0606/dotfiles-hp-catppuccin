#!/bin/bash

# Obtenemos el perfil actual
PERFIL=$(powerprofilesctl get)

if [ "$PERFIL" = "power-saver" ]; then
    powerprofilesctl set balanced
    notify-send -t 2000 "⚡ Perfil de Energía" "Cambiado a: Balanceado"
elif [ "$PERFIL" = "balanced" ]; then
    powerprofilesctl set performance
    notify-send -t 2000 "🚀 Perfil de Energía" "Cambiado a: Rendimiento"
else
    powerprofilesctl set power-saver
    notify-send -t 2000 "🍃 Perfil de Energía" "Cambiado a: Ahorro de Energía"
fi
