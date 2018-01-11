FROM dt27/domoticz-cn:init
MAINTAINER DT27 <dragonet1943@gmail.com>

VOLUME /config

EXPOSE 31080 31443

ENTRYPOINT ["/home/root/domoticz/domoticz", "-www", "31089", "-sslwww" ,"31443", "-dbase", "/config/domoticz.db", "-sslcert", "/config/server_cert.pem", "-log", "/config/domoticz.log"]
