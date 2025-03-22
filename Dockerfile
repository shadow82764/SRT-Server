FROM ubuntu:latest

# Обновление пакетов и установка SRT
RUN apt update && apt install -y libsrt-openssl-dev ffmpeg srt-tools

# Открываем порт для SRT
EXPOSE 8888

# Запускаем SRT-сервер в режиме listener
CMD ["srt-live-transmit", "srt://0.0.0.0:8888?mode=listener", "null"]
