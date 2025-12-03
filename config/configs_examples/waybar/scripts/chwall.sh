#!/bin/bash

# Comandi da digitare
COMMAND_TO_TYPE="chwall"

# 1. Avvia Alacritty in background (come una normale sessione Fish).
kitty -e fish --login &

# 2. Attendi l'apertura della finestra.
# Questo è critico e potresti doverlo regolare (ad esempio a 1.0 o 1.5 secondi)
sleep 0.4

# 3. Invia il testo alla finestra corrente (o alla finestra che ha il focus).
# Su Wayland, di solito, l'input viene inviato alla finestra che ha il focus.
wtype "$COMMAND_TO_TYPE"; wtype -k return
