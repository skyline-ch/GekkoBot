#!/bin/bash
#
# Script qui permet de modifier la configuration de Gekko pour
# le redandre accèssible sur le réseau local domestique
#
# Version : 0.1
# Date le 18.08.2018
# Créer par PhunkyBob et Skyline-ch
#
##########################

ip4=$(hostname -I)
echo "Votre IP : ${ip4// /}"

sed -i "s/127\.0\.0\.1/0\.0\.0\.0/g; s/localhost/${ip4// /}/g; s/headless: false/headless: true/;" ./UIconfig.js
