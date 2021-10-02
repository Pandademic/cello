# Latte 

[![CodeFactor](https://www.codefactor.io/repository/github/pandademic/latte/badge)](https://www.codefactor.io/repository/github/pandademic/latte)
<a href="https://gitpod.io/#github.com/Pandademic/Latte">![gitpod](https://img.shields.io/static/v1?label=Gitpod&message=Open%20in%20Gitpod&color=orange&logo=Gitpod)</a>
<a href="https://github.dev/Pandademic/Latte">![gh web editor](https://img.shields.io/badge/github%20web%20editor-ready-green?logo=github)</a>
[![Ruby 2.6 CI](https://github.com/Pandademic/Latte/actions/workflows/2.6ci.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/2.6ci.yml)
[![Ruby 2.7 CI](https://github.com/Pandademic/Latte/actions/workflows/2.7.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/2.7.yml)
[![Ruby 3.0 CI](https://github.com/Pandademic/Latte/actions/workflows/3.0ci.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/3.0ci.yml)
[![windows Ruby 2.6 CI](https://github.com/Pandademic/Latte/actions/workflows/win2-6ci.yml/badge.svg)](https://github.com/Pandademic/Latte/actions/workflows/win2-6ci.yml)
![Last release](https://img.shields.io/badge/Last%20release%3A-0.3.1-orange)
![GitHub issues](https://img.shields.io/github/issues/Pandademic/latte?style=plastic)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/count.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/overview.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)

---

Latte , The Hackable , Open source , Cross Platform ,Package Manager.  

# Install
- - -
 ## Linux:
 ____
 ### prerequisites
 - - -
 - ruby 2.6 or higher
 - latest production zip.:warning: **Nothing but the latest is supported**
 
 - - -
 - extract the file called lattefile & the gemfile into your home directory
 - in your shells config (.bashrc , .zshrc , config.fish , ect.)
  ``` sh
 alias latte ="ruby ~/latte" 
 ``` 
 - and then run 
 ``` sh
 bundle install
 ```
 to install dependencies.
 - Delete the gemfile
 - You should now be able to use Latte. Try:
``` sh 
latte add getting-started
```
## macos
- - -
### prereqisites 
----
- latte production zip.
- euby 2.6 or higher
- bundle
- ---
- in your shells config (.bashrc , .zshrc , config.fish , ect.)
  ``` sh
 alias latte ="ruby ~/latte" 
 ``` 
 - and then run 
 ``` sh
 bundle install
 ```
 to install dependencies.
 - Delete the gemfile
 - You should now be able to use Latte. Try:
``` sh 
latte add getting-started
```
## windows
---
### prereqisutes
----
- ruby 2.6 or higher
- lattezip
- git bash or wsl
---
if using wsl follow the steps for linux in the wsl terminal.
else , follow the linux steps in the git bash
# Creating a package
__________
steps:
- 1. Fork this repo
- 2. Make a new github repo and do your coding there
- 3. Then in the Fork of packages folder create a packageName.ini where packageName is your packages name.Then look at the <a href="https://github.com/Pandademic/Latte/blob/master/docs/package_example.ini">package_example.ini</a> in the docs to format the package.ini
- 4. Push your changes in the fork to a pull request
