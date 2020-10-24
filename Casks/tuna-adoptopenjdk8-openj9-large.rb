# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk8-openj9-large" do
  version "1.8.0_272-b10"
  sha256 "bdff5de14323af7dda9ec8b4bafc80b7268b798d7de1f3075da47ceef5eafbed"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_openj9_macosXL_8u272b10_openj9-0.23.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK8 (OpenJ9) (XL)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK8U-jdk_x64_mac_openj9_macosXL_8u272b10_openj9-0.23.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.8-openj9.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.8-openj9.jdk"
end