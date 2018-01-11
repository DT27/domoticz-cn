FROM dt27/domoticz-cn:init
MAINTAINER DT27 <dragonet1943@gmail.com>

VOLUME /config

EXPOSE 8080

ENTRYPOINT ["/src/domoticz/domoticz", "-www", "8080", "-sslwww" ,"443", "-dbase", "/config/domoticz.db", "-log", "/config/domoticz.log"]
