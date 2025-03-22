FROM ubuntu:latest

# Установка зависимостей
RUN apt update && apt install -y \
    libsrt-openssl-dev \
    ffmpeg \
    srt-tools \
    curl \
    unzip \
    jq

# Установка Ngrok
RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
RUN echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list
RUN apt update && apt install -y ngrok

# Установка токена Ngrok (Вставь свой токен сюда)
ARG NGROK_AUTH_TOKEN
RUN ngrok authtoken 2ufYgdPC9Fjcr5LoGC1hHmhycNR_5S9ySqUHff6UCftJMQEKC

# Открытие порта
EXPOSE 8888

# Запуск Cloudflare Tunnel + SRT
CMD cloudflared tunnel --no-autoupdate run & srt-live-transmit srt://0.0.0.0:8888?mode=listener udp://127.0.0.1:9999
