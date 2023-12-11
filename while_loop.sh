#!/bin/bash

# Перевірка чи передано аргумент (ім'я файлу)
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Створення файлу та заповнення його випадковими даними
head -c 4KB /dev/urandom > "$1"

# Отримання розміру файлу
filesize=$(stat -c%s "$1")

# Цикл, який об'єднує файл із собою, поки розмір не буде більший за 1024 байти
while [ $filesize -le 1024 ]; do
    cat "$1" >> "$1"
    filesize=$(stat -c%s "$1")
done

echo "File has been combined successfully. New size: $filesize bytes"
