# Используем OpenJDK 17 (или 11, если ваш проект на нём)
FROM openjdk:17-jre-slim

# Рабочая директория в контейнере
WORKDIR /app

# Копируем JAR (предполагаем, что он уже собран)
COPY .snapshot/KaraokeMusicBot-1.0-SNAPSHOT.jar app.jar

# Указываем, что контейнер слушает порты (необязательно для Long Polling)
# Telegram Long Polling не требует открытых портов

# Команда запуска
CMD ["java", "-jar", "app.jar"]