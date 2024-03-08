#!/bin/bash

if ! command -v docker &> /dev/null; then
    echo "Test nieudany: Docker nie jest zainstalowany."
    exit 1
fi

if [ ! -x "./script.sh" ]; then
    echo "Test nieudany: Brak uprawnień do wykonania skryptu."
    exit 1
fi

./script.sh

if [ "$(docker ps -q -f name=express-container)" ]; then
    echo "Test udany: Kontener został uruchomiony poprawnie."
else
    echo "Test nieudany: Kontener nie został uruchomiony."
    exit 1
fi

docker stop express-container
docker rm express-container

echo "Wszystkie testy zakończone pomyślnie."
