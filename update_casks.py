from os import replace
import requests

with open('Templates/adoptopenjdk.tmpl.rb') as f:
  cask = f.read()

for ver in range(8, 19):
  for jvm_impl in ('hotspot', 'openj9'):
    r = requests.get(f"https://api.adoptopenjdk.net/v3/assets/latest/{ver}/{jvm_impl}", timeout=(5, 10))
    r.raise_for_status()
    rel_list = r.json()
    for rel in rel_list:
      binary = rel['binary']
      if binary['image_type'] not in ('jre', 'jdk'): continue
      if binary['architecture'] != 'x64': continue
      if binary['os'] != 'mac': continue
      if 'installer' not in binary: continue

      cask_name = 'adoptopenjdk' + str(ver) \
        + ('' if jvm_impl == 'hotspot' else '-openj9') \
        + ('' if binary['image_type'] == 'jdk' else '-jre') \
        + ('' if binary['heap_size'] == 'normal' else '-large')
      version = rel['version']['openjdk_version']
      sha256 = binary['installer']['checksum']
      tuna_url = 'https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/' \
        + str(ver) + '/' + binary['image_type'] + '/x64/mac/' \
        + binary['installer']['name']
      name = 'AdoptOpenJDK' + str(ver) \
        + ('' if jvm_impl == 'hotspot' else ' (OpenJ9)') \
        + ('' if binary['image_type'] == 'jdk' else ' (JRE)') \
        + ('' if binary['heap_size'] == 'normal' else ' (XL)')
      filename = binary['installer']['name']
      identifier = 'net.adoptopenjdk.' + str(ver) \
        + ('' if jvm_impl == 'hotspot' else '-openj9') \
        + ('.jdk' if binary['image_type'] == 'jdk' else '.jre')
      
      cask_tmp = cask.replace('{cask_name}', 'tuna-' + cask_name)\
        .replace('{version}', version)\
        .replace('{sha256}', sha256)\
        .replace('{url}', tuna_url)\
        .replace('{name}', name)\
        .replace('{filename}', filename)\
        .replace('{identifier}', identifier)
      
      cask_filename = 'Casks/tuna-' + cask_name + '.rb'
      with open(cask_filename, "w") as f:
        f.write(cask_tmp)
