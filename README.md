# rust-ci
Jenkins ci for rust.

## 脚本说明

- publish.sh

  如果安装了 `rust` 环境, 执行该脚本发布可执行文件
  
- build.sh

  如果安装了 `docker`, 执行改脚本发布可执行文件

- pack.sh

  执行完 `publish.sh` 或 `build.sh` 后，执行该脚本打包 docker 镜像，并推送到 docker 仓库

- deploy.sh

  执行完 `pack.sh` 后，执行该脚本把应用部署到 kubernetes
