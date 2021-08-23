# Latte 

[![CodeFactor](https://www.codefactor.io/repository/github/pandademic/latte/badge)](https://www.codefactor.io/repository/github/pandademic/latte)
<a href="https://gitpod.io/#github.com/Pandademic/Latte">![gitpod](https://img.shields.io/static/v1?label=Gitpod&message=Open%20in%20Gitpod&color=orange&logo=Gitpod)</a>
<a href="https://github.dev/Pandademic/Latte">![gh web editor](https://img.shields.io/badge/github%20web%20editor-ready-green?logo=github)</a>
---

Latte is a Open source MIT licenced Package management system.It works by take the name of the package, finding its package.ini file and then getting the source code from the repo or the latest release zip/tar.gz. 

# Install
- - -
 ## Prerequisites
 ____
 - ruby 2.6 or higher
 - latest files in the production branch
 - wget
 ## Actual Install
 ___
 ## Linux:
 ____
 - extract the file called latte(should be located in the dist folder of the source code) into your home directory
 - in your ./bashrc or .zshrc or .fishrc put 
  ``sh
 alias latte ="ruby ~/latte" 
 `` 
 - and you should be good to use commands!

# Creating a package
__________
steps:
- 1. Fork this repo
- 2. Make a new github repo and do your coding there
- 3. Then in the Fork of packages folder create a packageName.ini where packageName is your packages name.Then look at the package_example.ini in the docs to format the package.ini
- 4. Push your changes in the fork to a pull request
