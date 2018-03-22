FROM dt27/domoticz-cn:init
MAINTAINER DT27 <dragonet1943@gmail.com>

VOLUME /config

EXPOSE 31080 31443

ENTRYPOINT ["/home/root/domoticz/domoticz", "-www", "31080", "-sslwww" ,"31443", "-dbase", "/home/root/domoticz/domoticz.db", "-sslcert", "/home/root/domoticz/server_cert.pem", "-log", "/home/root/domoticz/domoticz.log"]

CMD ["crond -b -L /var/log/cron/cron.log"]
