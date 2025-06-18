:: 获取网卡接口信息
echo 获取网卡接口信息...
route print | findstr /R "^ *[0-9]" | findstr /V "0.0.0.0"

echo (删除对所有IP的默认路由设置 ,将对所有IP的路由，指向外网网关IP 192.168.255.254  172.20.10.1)
route delete 0.0.0.0 
route add -p 0.0.0.0 mask 0.0.0.0 172.20.10.1

echo 对内网某个网段的访问，指向内网网关地址
route delete 194.0.0.0 
route add -p 194.0.0.0 mask 255.255.0.0 194.0.65.254

echo 刷新路由表
netsh interface ip delete destinationcache