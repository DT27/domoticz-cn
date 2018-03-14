# Domoticz Docker版 中文

## 安装命令：docker pull dt27/domoticz-cn:Stable
### 如果下载速度太慢或无法下载，可以试试下面这条命令从国内源下载：
```
docker pull docker.mirrors.ustc.edu.cn/dt27/domoticz-cn:Stable
```

## 推荐启动命令：
```
docker run -d -i -t --name domoticz --net host -v /宿主机用于存放博联配置文件的目录:/config dt27/domoticz-cn:Stable
```
## 说明
代码与原版一样，无改动

设置默认语言为中文

网页登录帐号密码均为`domoticz`，请在设置中更改

Docker容器系统中Domoticz主目录为：`/home/root/domoticz/`

数据库文件、ssl证书文件、日志文件均在Domoticz根目录中。

博联万能遥控配置文件目录推荐设置为`/config`，并将该目录映射到宿主机。

默认http端口`31080`，默认https端口`31443`

内置博联相关插件 [博联专区](https://www.domoticz.cn/forum/viewforum.php?f=33)

内置空气质量插件 [DT27-AQI](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=42)

内置查找我的iPhone插件 [FMIP](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=151)

内置智能电表插件 [Controlsys-Ammeter](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=102)

内置斐讯悟空M1空气管家插件 [Phicomm-M1](https://www.domoticz.cn/forum/viewtopic.php?f=11&t=165)

Docker常用命令：https://dt27.org/codes/docker-101/
