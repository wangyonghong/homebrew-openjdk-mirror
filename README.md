# Homebrew Tap [wangyonghong/openjdk-mirror](https://github.com/wangyonghong/homebrew-openjdk-mirror)

Last Update Time: 2021-09-11 00:47:21

Homebrew Tap [wangyonghong/openjdk-mirror](https://github.com/wangyonghong/homebrew-openjdk-mirror) 是为了使用 Homebrew 安装 AdoptOpenJDK 更加快速而维护的一个 Homebrew Tap。[官方的 Homebrew Tap](https://github.com/AdoptOpenJDK/homebrew-openjdk) 下载比较慢，而此 Homebrew Tap 镜像的来源是清华的镜像 [TUNA AdoptOpenJDK](https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/)，下载相对会快很多。

## 如何安装

```shell
brew tap wangyonghong/openjdk-mirror
```

然后

```shell
brew install <formula>
```

例子：

```shell
# tap
brew tap wangyonghong/openjdk-mirror

# 搜索
brew search openjdk
==> Casks
tuna-adoptopenjdk11 ✔
tuna-adoptopenjdk11-jre
tuna-adoptopenjdk11-openj9
tuna-adoptopenjdk11-openj9-jre
tuna-adoptopenjdk11-openj9-jre-large
tuna-adoptopenjdk11-openj9-large
tuna-adoptopenjdk12
tuna-adoptopenjdk12-openj9-jre-large
tuna-adoptopenjdk12-openj9-large
tuna-adoptopenjdk13 ✔
tuna-adoptopenjdk13-jre
tuna-adoptopenjdk13-openj9
tuna-adoptopenjdk13-openj9-jre
tuna-adoptopenjdk13-openj9-jre-large
tuna-adoptopenjdk13-openj9-large
tuna-adoptopenjdk14
tuna-adoptopenjdk14-jre
tuna-adoptopenjdk14-openj9
tuna-adoptopenjdk14-openj9-jre
tuna-adoptopenjdk14-openj9-jre-large
tuna-adoptopenjdk14-openj9-large
tuna-adoptopenjdk15 ✔
tuna-adoptopenjdk15-jre
tuna-adoptopenjdk15-openj9
tuna-adoptopenjdk15-openj9-jre
tuna-adoptopenjdk15-openj9-jre-large
tuna-adoptopenjdk15-openj9-large
tuna-adoptopenjdk8
tuna-adoptopenjdk8-jre
tuna-adoptopenjdk8-openj9
tuna-adoptopenjdk8-openj9-jre
tuna-adoptopenjdk8-openj9-jre-large
tuna-adoptopenjdk8-openj9-large

# 安装
brew cask install tuna-adoptopenjdk8
# 卸载
brew cask uninstall tuna-adoptopenjdk8
```
