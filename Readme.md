# `Master-Salve`结构的Web服务器架构
本项目为利用`Master`节点和`Salve`节点构成的`Docker`容器快速部署Web应用解决方案，其最终成型结构如下图所示

![Master-Salve_map](http://oyqaz5c9n.bkt.clouddn.com/18-5-6/20713268.jpg)

## `Master`节点
`Master`节点利用`Nginx`做了一个前置负载均衡，并将外部访问请求发往后部的`Slave`节点
`Master`节点是唯一对外可访问的节点，它与外部网络相通，并与内部网络中的各个`Salve`节点连接，担当`管理者`的角色
## `Salve`节点
`Salve`节点是负责后部处理请求，并去读取具体的用户请求的文件，返回给用户，担当`苦力`的角色
`Salve`节点不联通外部网络，只对内部可访问，连接到一个独立的虚拟网卡上，各个`Salve`节点互相独立，不可互相访问
