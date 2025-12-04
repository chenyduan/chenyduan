# npm

## 设置镜像
Yarn
临时修改
yarn add <package> --registry https://mirrors.zju.edu.cn/npm
永久修改
yarn config set registry https://mirrors.zju.edu.cn/npm

NPM
临时修改
npm install <package> --registry=https://mirrors.zju.edu.cn/npm
永久修改
npm config set registry https://mirrors.zju.edu.cn/npm

## 还原源
npm config set registry=https://registry.npmjs.org 



## 
npm install --verbose
npm install --no-progress
