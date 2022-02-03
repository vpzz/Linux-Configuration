# Enjoy Linux!

## 注意事项
1. 安装完Ubuntu后，先更新所有软件源,可以用tuna的。修改/etc/apt/sources.list文件。不过有时会因为没有更新ca-certificates这个包，会导致无法使用tuna提供的https链接，可以先将sources.list中的https替换为http。
2. 执行下列命令：
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
6. 配置gnome termimal。在文本选项卡中选择16pt的字体，颜色选项卡中选择以亮色显示粗体字。
