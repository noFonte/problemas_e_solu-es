@echo off
set /p action="Escolha uma opção (start, stop, clean, remove_all): "

if "%action%"=="start" (
    docker-compose up -d
    echo Container iniciado.
) else if "%action%"=="stop" (
    docker-compose down
    echo Container parado.
) else if "%action%"=="clean" (
    docker-compose down -v
    echo Container parado e volumes removidos.
) else if "%action%"=="remove_all" (
    docker-compose down -v --rmi all --remove-orphans
    echo Containers, volumes, redes e imagens removidos.
) else (
    echo Opção inválida.
)

pause
