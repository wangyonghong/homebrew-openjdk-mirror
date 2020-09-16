# Homebrew Tap [wangyonghong/openjdk-mirror](https://github.com/wangyonghong/homebrew-openjdk-mirror)

Last Update Time: 2020-09-16 14:35:06

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

## Todo

- 每天自动更新发 pull request
