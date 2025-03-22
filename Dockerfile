FROM ubuntu:latest

# Обновление пакетов и установка SRT
RUN apt update && apt install -y libsrt-openssl-dev ffmpeg srt-tools

# Открываем порт для SRT
EXPOSE 8888

# Запускаем SRT-сервер в режиме listener, передавая поток в локальный UDP
CMD ["srt-live-transmit", "srt://0.0.0.0:8888?mode=listener", "udp://127.0.0.1:9999"]
