#!/bin/bash
if [ ! -f ".env"]; then
    cp .env.example .env
    php artisan key:generate
    php artisan cache:clear
    php artisan config:clear
    php artisan route:clear
else
    echo ".env already exit"
fi


if [ ! -f "vendor/autoload.php" ]; then
    composer install --no-progress --no-interaction
fi
