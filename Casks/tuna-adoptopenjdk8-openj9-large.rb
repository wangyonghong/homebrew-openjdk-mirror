# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk8-openj9-large" do
  version "1.8.0_265-b01"
  sha256 "c0e77a57161ea52cc18120b1e0af1588d3c392a83d34b9f7599e05b5ef564720"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_openj9_macosXL_8u265b01_openj9-0.21.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK8 (OpenJ9) (XL)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK8U-jdk_x64_mac_openj9_macosXL_8u265b01_openj9-0.21.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.8-openj9.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.8-openj9.jdk"
end