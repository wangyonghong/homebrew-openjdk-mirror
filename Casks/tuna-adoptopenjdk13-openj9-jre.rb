# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk13-openj9-jre" do
  version "13.0.2+8"
  sha256 "ff2fe1bf9356e94e7cd3bd8af070d41a64c8349ea8e03158c512b29e9ba6c6bf"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/13/jre/x64/mac/OpenJDK13U-jre_x64_mac_openj9_13.0.2_8_openj9-0.18.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK13 (OpenJ9) (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "OpenJDK13U-jre_x64_mac_openj9_13.0.2_8_openj9-0.18.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.13-openj9.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.13-openj9.jre"
end