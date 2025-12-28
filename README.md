<img width="2137" height="460" alt="mysql" src="https://github.com/user-attachments/assets/37b94f3f-8f62-4f7d-bb2e-3e43c01beae3" />
<img width="1196" height="724" alt="redis" src="https://github.com/user-attachments/assets/933c83fe-7fae-498a-ab5e-ad8981abf176" />

# 生产环境运行看这里

- 这个是mysql和redis配置，运行时请自行带上对应环境变量，或者数据库和redis的配置按照图中给的默认值来
- 创建student-system数据库（推荐使用小皮面板，mysql5.7+,redis3.0+），用户名和密码均为student-system
- 数据库sql文件在SpringBoot\sql下，自行导入至自己的数据库中
- 后端部分运行java -jar dandelion-admin.jar
- 前端部分双击nginx.exe文件即可，随后在浏览器访问127.0.0.1

# 开发环境运行看这里

- https://github.com/dandelion-promise520/Student-System-SpringBoot.git

- https://github.com/dandelion-promise520/Student-System-Vue3.git

- 此为个人github账号，项目挂在github上可使用git拉取，文件夹内也有下好的zip

- 创建student-system数据库（推荐使用小皮面板，mysql5.7+,redis3.0+），用户名和密码均为student-system

- 启动mysql服务与redis服务，或在ruoyi-admin\src\main\resources\application.yml文件夹下修改为自定义的数据库账户与密码

- 将springBoot项目使用idea打开，项目使用jdk17+，maven刷新一下，下一下源文件和文档，入口文件在dandelion-admin/src/main/java/com/dandelion/DandelionApplication.java,运行此项目即可

- 将vue3项目使用vscode打开，项目使用vue3+vite+yarn

- 前端项目启动需要node环境，推荐使用nvm管理，https://nvm.uihtm.com/doc/download-nvm.html

- 此链接用于下载nvm，下载好之后配置换源与下载node版本，可看此个人博客文档https://dandelion.ljflovezxm.cn/posts/development-config/

- 先nvm换源，随后安装npm，随后npm换源，如npm命令提示有报错，请修改powershell安全策略，博客里有相应代码或使用cmd

- 推荐使用node22版本，随后全局安装yarn与@antfu/ni

  ``` shell
  npm i yarn -g
  #-g表示全局安装，就可以使用yarn管理包了
  
  npm i @antfu/ni - g
  #此项目为vite团队大佬开发的命令行工具，可以方便的使用包管理工具
  ```

- 随后命令行cd到Vue3的目录下，然后运行

  ```shell
  ni
  #其实就是npm i，就是偷个懒，然后选择yarn，此处提示什么管道符的话是powershell有个命令占用了，使用cmd即可
  ```

- 随后在命令行输入

  ```shell
  nr
  #其实就是 npm run （命令）,然后选择dev（开发环境热更新）,选build就是打包，打包好之后选perview就是预览打包后项目的样子
  ```

  
