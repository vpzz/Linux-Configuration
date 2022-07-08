# Enjoy Linux!

## 注意事项
1. 安装完Ubuntu后，先更新所有软件源,可以用tuna的。修改/etc/apt/sources.list文件。不过有时会因为没有更新ca-certificates这个包，会导致无法使用tuna提供的https链接，可以先将sources.list中的https替换为http。也可以使用阿里云的镜像：https://developer.aliyun.com/mirror/ubuntu
2. 无法连接ssh可能是因为没有安装，如果以最小化安装，默认是不安装ssh的，可以运行
``` shell
systemctl status ssh #观察ssh服务是否启动
sudo apt-get install ssh #如果没有，安装ssh套件
```
3. 执行下列命令：
``` shell
sudo apt-get update      #更新软件源缓存
sudo apt-get upgrade     #更新所有软件包
sudo apt-get install vim build-essential git curl
```
4. 需要时可以设置系统代理，使用宿主机的代理软件。
``` shell
export http_proxy=192.168.80.1:10809
export https_proxy=192.168.80.1:10809
```
5. 配置Vim
``` shell
cd ~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#然后进入Vim，执行  :PlugInstall
```
6. 配置gnome termimal。在文本选项卡中选择16pt的字体，颜色选项卡中勾选以亮色显示粗体字，取消勾选使用系统主题中的颜色。

7. 安装科学上网管理工具
``` shell
cd ~
wget https://github.com/v2fly/v2ray-core/releases/download/v4.44.0/v2ray-linux-64.zip            #安装v2ray核心
wget https://github.com/Qv2ray/Qv2ray/releases/download/v2.7.0/Qv2ray-v2.7.0-linux-x64.AppImage  #安装Qv2ray，这是用QT编写的v2ray的GUI管理工具
sudo chmod a+x Qv2ray-v2.7.0-linux-x64.AppImage    #添加执行权限
sudo mv Qv2ray-v2.7.0-linux-x64.AppImage /usr/bin  #安装Qv2ray，该程序就一个可执行文件。
sudo mkdir /opt/v2ray     #创建v2ray核心的安装目录
sudo unzip v2ray-linux-64.zip -d /opt/v2ray   #解压缩
```
8. 启动qv2ray,分组，订阅设置，勾选此分组是一个订阅，订阅类型选择 Base64，更新订阅。
9. 如果打开Chrome提示，需要输入密码解锁密钥环，可以在终端输入seahorse，然后在登录上点击邮件，修改密码，新密码留空即可。
10. 如果挂载其他的NTFS分区时，只能以只读方式挂载，应该是因为Windows的快速启动没有关闭，进入Windows系统关闭快速启动即可。
11. 在/etc/fstab中加入开机要挂载的分区，记得要先创建对应的空目录。
```
/dev/sdb2 /media/zj/数据 ntfs defaults 0 0
```
12. 
13. 
