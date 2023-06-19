#!/bin/bash

# 环境检查
make check

# 检查并安装所需的依赖包
make install

# 渲染生成静态网站
make generate

# 启动 Hexo 本地服务器
make server

#EOF