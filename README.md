# Appveyor-Docker

## build

- `docker build . -t appveyor:latest -t appveyor:7.0.2184`

## run

- `docker run --restart always --name appveyor -d -p 80:80 -v appveyor_config:/etc/opt/appveyor/server -v appveyor_data:/var/opt/appveyor/server  xxred/appveyor`
