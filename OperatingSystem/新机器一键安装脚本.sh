#!/usr/bin/env bash

echo "update apt source>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources

sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/ubuntu.sources

sudo sed -i 's/http:/https:/g' /etc/apt/sources.list.d/ubuntu.sources

sudo apt-get update

echo "update apt source<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"



# 下载并安装 nvm：
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# 代替重启 shell
\. "$HOME/.nvm/nvm.sh"
# 下载并安装 Node.js：
nvm install 24
# 验证 Node.js 版本：
node -v # Should print "v24.11.1".
# 验证 npm 版本：
npm -v # Should print "11.6.2".



echo "安装 Sdkman>>>>>>>>>>>>>>>>>>"

sudo apt install  zip unzip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

echo "安装Google chrome 浏览器>>>>>>>>>>>>>>>>>>>>>>>>>"

cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -f /tmp/google-chrome-stable_current_amd64.deb
google-chrome







echo "安装Github Cli"

(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
&& cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

sudo apt update
sudo apt install gh


