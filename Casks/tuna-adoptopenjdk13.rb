# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk13" do
  version "13.0.2+8"
  sha256 "7b60830e61a0483ee81ed6ca6463e211a529e43b1f3815a57c2e3780ce4ba0ba"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/13/jdk/x64/mac/OpenJDK13U-jdk_x64_mac_hotspot_13.0.2_8.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK13"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK13U-jdk_x64_mac_hotspot_13.0.2_8.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.13"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.13"
end