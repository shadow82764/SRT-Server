FROM ubuntu:latest

# Установка SRT и необходимых пакетов
RUN apt update && apt install -y libsrt-openssl-dev ffmpeg srt-tools curl unzip

# Установка Ngrok
RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc > /dev/null
RUN echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list
RUN apt update && apt install -y ngrok

# Открытие порта
EXPOSE 8888

# Запуск Ngrok + SRT
CMD ngrok tcp 8888 --region=us & srt-live-transmit srt://0.0.0.0:8888?mode=listener udp://127.0.0.1:9999
