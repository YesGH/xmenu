#!/bin/sh

# Xmenu 程序菜单，用于dwm窗口管理器鼠标常用程序操作。20220120 by Yegang
# 运行环境：debian11+xfce4i+dwm+xmenu
# 字段分割符 Tab，菜单结构 [图标] 程序名 程序  
xmenu <<EOF | sh &
办公
	文本编辑	/usr/bin/mousepad
	金山办公	/usr/bin/wps
	自由办公	/usr/bin/libreoffice 
	Homebank	/usr/bin/homebank 
	PDF浏览	/usr/bin/atril
	Zathura	/usr/bin/zathura
媒体
	视频播放	/usr/bin/vlc
	音频播放	/usr/bin/quodlibet 
	音频管理	/usr/bin/pavucontrol  
图形
	截图	/usr/bin/xfce4-screenshooter
	看图	/usr/bin/ristretto
	修图	/usr/bin/gimp 
网络
	Chromium	/usr/bin/chromium
	Firefox	/usr/bin/firefox
	Midori	/usr/bin/midori
	雷鸟邮箱	/usr/bin/thunderbird
	通信--
	蓝牙管理	/usr/bin/blueman-manager
	外网开启	st -T "express on" -e sh -c "/usr/bin/expressvpn connect usla5" 
	外网关闭	st -T "express off" -e sh -c "/usr/bin/expressvpn disconnect" 
	虫洞接收	st -T "wormhole receive" -e sh -c "/usr/bin/wormhole receive" 
	cadaver	st -T "cadaver" -e sh -c "/usr/bin/cadaver" 
	Rustdesk	/usr/bin/rustdesk 
	rdesktop	/usr/bin/rdesktop 
系统 
	Xfce终端	/usr/bin/xfce4-terminal 
	经典终端	/usr/bin/xterm
	虚拟机	/usr/bin/virtualbox 
	任务管理	/usr/bin/xfce4-taskmanager 
	Pstree	/usr/bin/st -T "Pstree" -e sh -c "/usr/bin/pstree.x11" 
	Top	/usr/bin/st -T "Top" -e sh -c "/usr/bin/top" 
	挂盘--
	加载C	st -T "加载" -e sh -c "sudo mount /dev/sda3 /media/g/ && exit" 
	加载D	st -T "加载" -e sh -c "sudo mount /dev/sda5 /media/g/ && exit" 
	卸载	st -T "卸载" -e sh -c "sudo umount /media/g/ && exit" 
	电源设置	st -T "电源设置" -e sh -c "xfce4-power-manager-settings && exit" 
	显示-- 
	1920x1080	/usr/bin/xrandr -s 1920x1080 
	1440x810	/usr/bin/xrandr -s 1440x810 
	1280x720	/usr/bin/xrandr -s 1280x720 
	锁屏	/usr/bin/slock 
	主屏关闭	/usr/bin/xrandr --output eDP-1 --off 
****
	重启	st -T "重启" -e sh -c "sudo reboot"            
	关机	st -T "关机" -e sh -c "sudo shutdown -h now" 
EOF
