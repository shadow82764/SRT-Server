FROM ubuntu:latest

# Установка необходимых пакетов
RUN apt update && apt install -y libsrt-openssl-dev ffmpeg

# Запуск SRT-сервера
CMD ["srt-live-transmit", "srt://:8888?mode=listener", "udp://127.0.0.1:9999"]