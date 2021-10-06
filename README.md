# Latte 

[![CodeFactor](https://www.codefactor.io/repository/github/pandademic/latte/badge)](https://www.codefactor.io/repository/github/pandademic/latte)
<a href="https://gitpod.io/#github.com/Pandademic/Latte">![gitpod](https://img.shields.io/static/v1?label=Gitpod&message=Open%20in%20Gitpod&color=orange&logo=Gitpod)</a>
<a href="https://github.dev/Pandademic/Latte">![gh web editor](https://img.shields.io/badge/github%20web%20editor-ready-green?logo=github)</a>
![Last release](https://img.shields.io/badge/Last%20release%3A-0.3.1-orange)
![GitHub issues](https://img.shields.io/github/issues/Pandademic/latte?style=plastic)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/count.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)
[![Depfu](https://badges.depfu.com/badges/3aef7c1603f63a6745f347346aef53fa/overview.svg)](https://depfu.com/github/Pandademic/Latte?project_id=31718)

---

Latte , The Hackable , Open source , Cross Platform ,Package Manager.

# Features
-----

- ✨ It's Small!
- ✨ Its Fast! (Mostly)
- ✨ It's Supported on Pretty much everything!
- ✨ Oh for goodness sake , The README is bigger than the actual Package manager!
- ✨ More to come!

# Install
- - -
 ## Linux:
 ____
 ### prerequisites
 - - -
 - ruby 2.6 or higher
 - latest production zip.:warning: **Nothing but the latest is supported**
 - bundler gem
 
 - - -
 - extract the file called lattefile & the gemfile into your home directory
 - in your .bashrc or .zshrc add:
  ``` sh
 alias latte ="ruby ~/lattefile" 
 ``` 
 - if using fish , in your config.fish add:
 ``` fish
 alias latte "ruby ~/lattefile"
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
 - extract the file called lattefile & the gemfile into your home directory
 - in your .bashrc or .zshrc add:
  ``` sh
 alias latte ="ruby ~/lattefile" 
 ``` 
 - if using fish , in your config.fish add:
 ``` fish
 alias latte "ruby ~/lattefile"
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
- latte production zip
- Latte.bat from the `/tools/install/` dir
- bundler gem
---
- Extract the lattefile & the gemfile into your home directory.
- run ``sh
bundle install
``
- delete the gemfile.
- you should  be good to use latte!
# Creating a package
__________
steps:
- 1. Fork this repo
- 2. Make a new github repo and do your coding there
- 3. Then in the Fork of packages folder create a packageName.ini where packageName is your packages name.Then look at the <a href="https://github.com/Pandademic/Latte/blob/master/docs/package_example.ini">package_example.ini</a> in the docs to format the package.ini
- 4. Push your changes in the fork to a pull request
