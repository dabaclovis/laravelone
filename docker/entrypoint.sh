#!/bin/bash
if [ ! -f ".env" ]; then
    cp .env.example .env

else
    echo ".env already exit"
fi
    php artisan key:generate
    php artisan cache:clear
    php artisan config:clear
    php artisan route:clear


