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
