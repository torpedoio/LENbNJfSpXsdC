FROM python:3.9.10-slim-buster

COPY . .

RUN apt-get update && apt upgrade -y && apt-get install sudo apt-utils -y
RUN apt-get install -y \
    bash \
    gcc \
    ffmpeg \
    zip \ 
    wget \
    wkhtmltopdf \
    neofetch \
    mediainfo \
    git \
    jq \
    unzip \
    python3-dev

RUN bash run.sh

CMD ["python3", "RUN.py"]
