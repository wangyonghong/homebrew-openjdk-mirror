# PLEASE DO NOT EDIT THIS FILE. EDIT Templates/adoptopenjdk.rb.tmpl
cask "tuna-adoptopenjdk17-openj9-jre" do
  version "17.0.3+7"
  sha256 "751b71cecaf307b73cacea85e237f350985ee0c6718fa873be43d6b972f7ff0e"

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url "https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/17/jre/x64/mac/ibm-semeru-open-jre_x64_mac_17.0.3_7_openj9-0.32.0.pkg"
  appcast "https://github.com/AdoptOpenJDK"
  name "AdoptOpenJDK17 (OpenJ9) (JRE)"
  homepage "https://adoptopenjdk.net/"

  pkg "ibm-semeru-open-jre_x64_mac_17.0.3_7_openj9-0.32.0.pkg"

  postflight do
    system_command "/usr/sbin/pkgutil", args: ["--pkg-info", "net.adoptopenjdk.17-openj9.jre"], print_stdout: true
  end

  uninstall pkgutil: "net.adoptopenjdk.17-openj9.jre"
end