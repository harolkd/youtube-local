FROM alpine:latest

WORKDIR /home/app
COPY . /home/app

RUN apk add --no-cache --update python3 py3-pip
RUN python3 -m pip install -r requirements.txt --break-system-packages

EXPOSE 8080

CMD ["python3", "server.py"]
