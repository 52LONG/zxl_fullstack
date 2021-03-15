## React 学习
全局安装
npm i -g create-react-app
构建一个my-app的项目
npx create-react-app my-app
cd my-app
启动编译当前的React 项目 并且自动打开 http://loaclhost:3000/
npm start 或 yarn start

package.json 是第三方包管理
node_modules 第三方包
public 公用文件

npm install xxx: 安装项目到项目目录下，不会将模块依赖写入devDependencies或dependencies。

npm install -g xxx: -g的意思是将模块安装到全局，具体安装到磁盘哪个位置，要看 npm cinfig prefix的位置

npm install -save xxx：-save的意思是将模块安装到项目目录下，并在package文件的dependencies节点写入依赖。

npm install -save-dev xxx：-save-dev的意思是将模块安装到项目目录下，并在package文件的devDependencies节点写入依赖。


https://mock.mengxuegu.com/project/604e17d0f340b05bceda41c8  伪数据网站 


动画库 react-transition-group
npm install react-transition-group --save

