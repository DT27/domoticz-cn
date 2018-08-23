# Domoticz Docker版 中文

![-2018-03-22-19.14.25e83e23bbe8ca896a.jpg](http://youjb.com/images/2018/03/22/-2018-03-22-19.14.25e83e23bbe8ca896a.jpg)

## 安装命令：
推荐稳定版 3.8153

```docker pull dt27/domoticz-cn:Stable```

最新稳定版 4.9701

```docker pull dt27/domoticz-cn:Stable-4.9701```


### 如果下载速度太慢或无法下载，可以试试下面这条命令从国内源下载：
```
docker pull docker.mirrors.ustc.edu.cn/dt27/domoticz-cn:Stable
```

## 推荐启动命令：
```
docker run -d -i -t --name domoticz --net host -v ~/domoticz/config:/config dt27/domoticz-cn:Stable
```

## 说明
代码与原版一样，无改动

设置默认语言为中文

网页登录帐号密码均为`domoticz`，请在设置中更改

同时需要修改的还有设置中的经纬度，硬件中DarkSky中的经纬度及apikey。


Docker容器系统中Domoticz主目录为：`/src/domoticz/`

数据库文件、ssl证书文件、日志文件均在Domoticz根目录中。

博联万能遥控配置文件目录默认设置为`/src/domoticz/plugins/BroadlinkRM2/config`。

##！！！关于目录映射！！！

映射，是将宿主机的目录放到docker中。

所以，请不要直接映射docker中已有的目录，会导致docker中已有目录被宿主机目录覆盖。

建议docker运行后，将`/src/domoticz`目录复制到宿主机，然后再将复制出来的目录映射到`/src/domoticz`。


默认http端口`31080`，默认https端口`31443`

Docker常用命令：https://dt27.org/codes/docker-101/

==================================

内置博联相关插件 [博联专区](https://www.domoticz.cn/forum/viewforum.php?f=33)

内置空气质量插件 [DT27-AQI](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=42)

内置查找我的iPhone插件 [FMIP](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=151)

内置智能电表插件 [Controlsys-Ammeter](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=102)

内置斐讯悟空M1空气管家插件 [Phicomm-M1](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=165)

内置 dashticz_v2  

==================================  

### Dashticz中国版
#### 访问方法
如果domoticz地址是 http://192.168.1.123:8080/  
那么dashticz地址就是 http://192.168.1.123:8080/dash/ 
不需要设置domoticz服务器地址。 
### 天气修改
custom/CONFIG.js 最后一行 

![-2018-03-22-19.13.1082c5fab413841732.jpg](http://youjb.com/images/2018/03/22/-2018-03-22-19.13.1082c5fab413841732.jpg)


