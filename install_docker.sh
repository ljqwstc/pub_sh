# 卸载老的
yum remove docker docker-client docker-client-latest docker-common docker-latest \
docker-latest-logrotate docker-logrotate docker-engine

# 安装新的
yum install -y yum-utils device-mapper-persistent-data lvm2

# 设置docker的yum软件源
yum-config-manager --add-repo https://mirrors.ustc.edu.cn/docker-ce/linux/centos/docker-ce.repo

# 安装docker
yum install -y docker-ce docker-ce-cli containerd.io

# 设置docker开启启动
systemctl enable docker

# 启动docker
systemctl start docker

# 下载docker-compose
curl -L https://github.com/docker/compose/releases/download/v2.29.7/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

# 赋予执行权限
chmod u+x /usr/local/bin/docker-compose

# 安装docker-compose bash命令提示
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.25.4/contrib/completion/bash/docker-compose \
 -o /etc/bash_completion.d/docker-compose
