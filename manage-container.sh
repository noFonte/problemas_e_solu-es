#!/bin/bash

echo "Escolha uma opção (start, stop, clean):"
read action

case $action in
  start)
    docker-compose up -d
    echo "Container iniciado."
    ;;
  stop)
    docker-compose down
    echo "Container parado."
    ;;
  clean)
    docker-compose down -v
    echo "Container parado e volumes removidos."
    ;;
  *)
    echo "Opção inválida."
    ;;
esac
