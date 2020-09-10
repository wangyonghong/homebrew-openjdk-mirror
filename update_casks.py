from os import replace
import re
import yaml

with open('versions.yml', 'r', encoding='utf-8') as f:
  versions = yaml.load(f.read(), Loader=yaml.Loader)
  for version in versions:
    print(version)
    with open('Templates/adoptopenjdk.tmpl.rb') as f:
      cask = f.read().replace('{cask_name}', 'tuna-' + version['cask_name'])\
        .replace('{version}', version['version'])\
        .replace('{sha256}', version['sha256'])\
        .replace('{url}', version['tuna-url'])\
        .replace('{name}', version['name'])\
        .replace('{filename}', version['filename'])\
        .replace('{identifier}', version['identifier'])

    with open('Casks/tuna-' + version['cask_name'] + '.rb', "w") as f:
      f.write(cask)