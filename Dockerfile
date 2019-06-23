FROM ubuntu:18.04 as download
WORKDIR /tmp
RUN apt update
RUN apt install wget -y
RUN wget https://www.appveyor.com/downloads/appveyor-server/7.0/linux/appveyor-server_7.0.2184_amd64.deb -O appveyor-server.deb
FROM mcr.microsoft.com/dotnet/core/runtime-deps:2.2.5-bionic
RUN apt update
RUN apt install libcap2-bin -y
COPY --from=download /tmp/appveyor-server.deb /tmp/
RUN dpkg -i /tmp/appveyor-server.deb
RUN rm -f /tmp/appveyor-server.deb
WORKDIR /opt/appveyor/server
EXPOSE 80 443
ENTRYPOINT [ "./appveyor-server" ]
