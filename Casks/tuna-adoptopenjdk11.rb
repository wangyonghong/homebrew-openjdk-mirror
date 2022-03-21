# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk11" do
  version "11.0.14.1+1"
  sha256 "1c165d086d89cc540d01efbf60fcfe9ead6a7ede64d6d3a75ff6e2a8c94bd8f4"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/11/jdk/x64/mac/OpenJDK11U-jdk_x64_mac_hotspot_11.0.14.1_1.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK11"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK11U-jdk_x64_mac_hotspot_11.0.14.1_1.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.11.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.11.jdk"
end