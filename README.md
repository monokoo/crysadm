#迅雷云监工源代码
***

##用法
进入系统后先升级源，输入命令<br>
`yum update` <br>
等一会自动下载，输入命令 <br>
`yum install -y git` <br>
用 `cd` 命令进入任意可写权限文件夹，输入命令<br>
`git clone https://github.com/monokoo/crysadm.git`<br>
等待下载完成，输入命令,配置python3.4环境<br>
`cd crysadm  &&  sh install_python3.sh`<br>
配置完成之后重启服务器生效<br>
`reboot`<br>
进入系统执行setup.sh脚本<br>
`cd crysadm  && sh setup.sh`<br>
此时等待安装，完成后会自动启动云监工。<br>
***
##PS:<br>
***
install_python3.sh是配置python3.4脚本，，setup.sh是安装环境脚本。<br>
如果同步最新代码更新执行以下命令:<br>
git pull <br>
service crysadm restart <br>
***
***




***   
- 默认端口：4000
- 第一次获得密码方法：浏览器打开【IP:4000/install】

##  2016.04.10 更新 v4.1001<br>
（本次改动文件:account.py,api.py,crysadm_helper.py,login.py,accounts.html）<br>
删除无用接口<br>
添加双重登陆接口<br>
更新部分接口参数<br>
添加迅雷账号全部启用函数<br>
添加迅雷账号全部停用函数<br>
添加迅雷账号全部启用按钮<br>
添加迅雷账号全部停用按钮<br>

##  2016.04.09 更新 v4.0901<br>
感谢seatom 和 powergx的劳动成果，在此基础上适配centos系统修改脚本，仅适合centos系统，其他环境请参考https://github.com/seatom/crysadm<br>
- 启动service crysadm start <br>
- 关闭service crysadm stop <br>
- 重启service crysadm restart <br>

##  2016.04.05 更新 v4.0501 <br>
（本次改动文件:api.py,admin.py,crysadm_helper.py,user.py,profile.html,user_management.html）<br>
添加秘银复仇接口<br>
添加秘银复仇函数<br>
添加秘银复仇按钮<br>

##  2016.04.03 更新 v4.0301 <br>
（本次改动文件:admin.py,admin_user.html,user.py）<br>
添加用户管理登陆时间显示<br>
添加用户管理登陆状态显示<br>

##  2016.04.02 更新 v4.0201 <br>
（本次改动文件:admin.py,crysadm_helper.py,excavator.py,user.py）<br>
修复运行日记显示登陆时不刷新问题<br>
修复部分用户登陆失败出现502错误<br>
注意：需重新登陆<br>

##  2016.03.31 更新 v3.3101<br>

添加运行日记<br>

##  2016.03.27 更新 v3.2701<br>

添加更多产量信息，修改进攻和转盘函数<br>

##  2016.03.25 更新 v3.2501<br>

添加炫酷首页；添加速度曲线<br>

##  2016.03.24 更新 v3.2401<br>

由@Tiramisu 提供更新：<br>
增加“APP管理”按钮<br>

由@Seatom 提供更新：<br>
修改crysadm_helper.py，修复免费宝箱和收取水晶问题<br>

##  2016.03.21 更新 v3.2101<br>

如有任何疑问及Bug欢迎加入L.k群讨论<br>
@爱转角遇到了谁 大力更新,请尊重作者<br>
为了您的云监工安全,请立马修改config.py[SECRET_KEY] Key！请不要使用默认的<br>

api.py更新日记:<br>
更新用户提现接口	更新MINE信息接口  <br>
新增免费宝箱接口	新增放弃宝箱接口  <br>
新增秘银进攻接口	新增幸运转盘接口  <br>

crysadm_helper.py更新日记:<br>
删除老式矿机变量	    新增自动用户提现函数  <br>
新增自动免费宝箱函数	新增自动秘银进攻函数  <br>
新增自动幸运转盘函数<br>

excavator.py更新日记:<br>
添加设备升级函数	添加设备定位函数  <br>
添加出厂设置函数	添加设备管理函数  <br>
添加单个账号提现	添加单个账号进攻  <br>
添加单个账号转盘	添加所有账号提现  <br>
添加所有账号进攻	添加所以账号转盘  <br>

admin.py更新日记:<br>
添加自动用户提现变量	添加自动开免费宝箱变量  <br>
添加自动秘银进攻变量	添加自动幸运转盘变量  <br>
更改最高迅雷账号上限:100<br>

ueer.py更新日记:
添加自动用户提现变量	添加自动开免费宝箱变量 <br> 
添加自动秘银进攻变量	添加自动幸运转盘变量  <br>
更改注册后迅雷账号上限:20<br>

web_common.py更新日记:<br>
更换类型返回信息	删除老式矿机变量  <br>

register.html更新日记:<br>
添加注册成功提示框<br>

excavator.html更新日记:<br>
删除老式矿机信息	删除雇佣矿机信息  <br>
添加秘银数量信息	添加今日产值信息  <br>
添加设备升级按钮	添加设备定位按钮  <br>
添加出厂设置按钮	添加设备管理按钮  <br>
更换设备显示类型	添加设备固件版本显示  <br>
添加设备端口映射显示	添加单个账号进攻按钮  <br>
添加单个账号转盘按钮	添加所有账号进攻按钮  <br>
添加所以账号转盘按钮<br>

profile.html更新日记:<br>
添加自动提醒开关	添加免费宝箱开关  <br>
添加秘银进攻开关	添加幸运转盘开关  <br>

user_management.html更新日记:<br>
添加自动提醒开关	添加免费宝箱开关  <br>
添加秘银进攻开关	添加幸运转盘开关  <br>



***   

##  2016.03.18 更新<br>

***   

感谢@爱转角遇见了谁 的源码，使监工又能用了，而且加了新功能<br>

更新@爱转角遇见了谁 的源码，增加了自动转盘，自动进攻功能<br>

***    
##2016.03.09 更新<br>
***
更新user.py，解决登出其他用户直接到login页面问题<br>
***
##2016.03.08 更新<br>
***
感谢Dream.Fei的源代码  <br>
更新开宝箱功能，说明进入crysadm文件夹看  <br>

更改收水晶时间为6小时，迅雷帐号最大为200<br>
***
##2016.03.04 14:30 更新<br>
***
更新cron.sh脚本，实现每小时重启一次监工，分钟时间是随机一次<br>
***
##2016.03.02 17:00 更新<br>
***
更新README.MD文件<br>
***
##2016.03.02 9:40更新<br>
***
源代码降回提现功能版本<br>
开宝箱版有问题<br>
刷新数据改为15秒更新<br>
***
##2016.03.01 17:00更新
***
升级了开免费宝箱功能<br>
收水晶改为6小时收一次<br>
***
##以前更新
***
此版本增加了自动提现功能<br>
此版本加了环境安装脚本，安装脚本支持ubuntu 14.04，debian 8，kali 2.0，实测可用<br>
***

