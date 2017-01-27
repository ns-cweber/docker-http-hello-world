FROM hypriot/rpi-golang:latest

RUN mkdir -p /app

WORKDIR /app

ADD . /app

RUN GOOS=linux GOARCH=arm go build -o app ./main.go

CMD ["./app"]

EXPOSE 8080
