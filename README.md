# Appveyor-Docker

- `docker build . -t appveyor:latest -t appveyor:7.0.2184`
- `docker run --rm -d  -p 80:80/tcp appveyor:latest`
