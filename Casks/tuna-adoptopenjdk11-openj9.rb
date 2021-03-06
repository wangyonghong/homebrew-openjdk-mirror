# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk11-openj9" do
  version "11.0.11+9"
  sha256 "4e1cc6fbc050b4ea01aca8791726fd32ee979f737d4124f5f683a67223b55ba0"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/11/jdk/x64/mac/OpenJDK11U-jdk_x64_mac_openj9_11.0.11_9_openj9-0.26.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK11 (OpenJ9)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK11U-jdk_x64_mac_openj9_11.0.11_9_openj9-0.26.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.11-openj9.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.11-openj9.jdk"
end