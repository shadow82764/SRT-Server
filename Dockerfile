FROM ubuntu:latest

# Установка зависимостей
RUN apt update && apt install -y \
    libsrt-openssl-dev \
    ffmpeg \
    srt-tools \
    curl \
    unzip \
    jq

# Установка ngrok
RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
RUN echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list
RUN apt update && apt install -y ngrok

# Проверка версии ngrok
RUN ngrok --version

# Установка токена ngrok через переменную окружения
ENV NGROK_AUTH_TOKEN=2ufYgdPC9Fjcr5LoGC1hHmhycNR_5S9ySqUHff6UCftJMQEKC

# Установка токена ngrok с использованием переменной окружения
RUN ngrok authtoken ${NGROK_AUTH_TOKEN}

# Открытие порта
EXPOSE 8888

# Запуск ngrok и srt
CMD echo "Starting ngrok tunnel..." && ngrok tcp 8888 & \
    echo "Starting SRT live transmission..." && srt-live-transmit srt://0.0.0.0:8888?mode=listener udp://127.0.0.1:9999
