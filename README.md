# Latte 

[![CodeFactor](https://www.codefactor.io/repository/github/pandademic/latte/badge)](https://www.codefactor.io/repository/github/pandademic/latte)
<a href="https://gitpod.io/#github.com/Pandademic/Latte">![gitpod](https://img.shields.io/static/v1?label=Gitpod&message=Open%20in%20Gitpod&color=orange&logo=Gitpod)</a>
<a href="https://github.dev/Pandademic/Latte">![gh web editor](https://img.shields.io/badge/github%20web%20editor-ready-green?logo=github)</a>
[![Ruby 2.6 CI](https://github.com/Pandademic/Latte/actions/workflows/2.6ci.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/2.6ci.yml)
[![Ruby 2.7 CI](https://github.com/Pandademic/Latte/actions/workflows/2.7.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/2.7.yml)
[![Ruby 3.0 CI](https://github.com/Pandademic/Latte/actions/workflows/3.0ci.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/3.0ci.yml)
![Last release](https://img.shields.io/badge/Last%20release%3A-0.3.0-orange)
![GitHub issues](https://img.shields.io/github/issues/Pandademic/latte?style=plastic)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/count.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/overview.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)

---

Latte is a Open source MIT licenced Package management system. It works by take the name of the package, finding its package.ini file and then getting the source code from the repo or the latest release zip or tarball  

# Install
- - -
 ## Prerequisites
 ____
 - ruby 2.6 or higher
 - a Release file such as latte in the latte-production 0.2.0 .zip  **⚠️ You must use 0.2.0 or higher. Anything under 0.2.0 is unsupported ⚠️**
 - curl
 <!--- git for version 0.2.1-dev or higher -->
 - git bash if you are on windows <a href="https://github.com/Pandademic/Latte/tree/master/docs/gbash.md">Read why</a>
 ## INSTALL 
 ``` sh
curl -O https://raw.githubusercontent.com/Pandademic/Latte/production/latte
 ```

<a href="https://github.com/Pandademic/Latte/wiki/Installation">CLICK HERE FOR MORE METHODS</a>
 ___
 ## Linux:
 ____
 - extract the file called latte(should be located in the dist folder of the source code) into your home directory
 - in your ./bashrc or .zshrc or config.fish put 
  ``` sh
 alias latte ="ruby ~/latte" 
 ``` 
 - run 
 ``` sh
 bundle install
 ```
 to install dependencies
 - You should now be able to use Latte. I recomend doing
```
latte add getting-started
```

# Creating a package
__________
steps:
- 1. Fork this repo
- 2. Make a new github repo and do your coding there
- 3. Then in the Fork of packages folder create a packageName.ini where packageName is your packages name.Then look at the <a href="https://github.com/Pandademic/Latte/blob/master/docs/package_example.ini">package_example.ini</a> in the docs to format the package.ini
- 4. Push your changes in the fork to a pull request
