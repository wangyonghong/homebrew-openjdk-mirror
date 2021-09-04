# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk8-openj9" do
  version "1.8.0_302-b08"
  sha256 "2be6251adea82663702338e8aca23923f38997f4f36a1791e6ac9e2d49855e0f"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jdk/x64/mac/ibm-semeru-open-jdk_x64_mac_8u302b08_openj9-0.27.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK8 (OpenJ9)"
  homepage "https://adoptopenjdk.net/"

  pkg "ibm-semeru-open-jdk_x64_mac_8u302b08_openj9-0.27.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.8-openj9.jdk"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.8-openj9.jdk"
end