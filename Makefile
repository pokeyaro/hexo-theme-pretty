# 环境准备
check:
	# 判断本地是或有 Node 环境
	if ! command -v node &> /dev/null; then \
		echo "Error: Node.js is not installed. Please install Node.js before running this script."; \
		exit 1; \
	fi
	# 判断本地是否有 Yarn 工具
	if ! command -v yarn &> /dev/null; then \
		echo "Error: yarn is not installed. Please install yarn before running this script."; \
		exit 1; \
	fi
	# 判断本地是否安装 Hexo 库
	if ! command -v hexo &> /dev/null; then \
		echo "Error: Hexo is not installed. Please install Hexo before running this script."; \
		exit 1; \
	fi

# 下载依赖包
install:
	yarn
	if [ ! -d "./node_modules" ]; then \
		exit 1; \
	fi

# 渲染静态网站
generate:
	hexo generate

# 启动 Hexo 本地服务器
server:
	hexo server

.PHONY: check install generate server