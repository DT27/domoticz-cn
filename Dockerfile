FROM dt27/domoticz-cn:init
MAINTAINER DT27 <dragonet1943@gmail.com>

VOLUME /config

EXPOSE 8080

ENTRYPOINT ["/home/root/domoticz/domoticz", "-www", "8080", "-sslwww" ,"443", "-dbase", "/config/domoticz.db", "-sslcert", "/config/server_cert.pem", "-log", "/config/domoticz.log"]
