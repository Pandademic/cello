
# ☕ Cello ☕
Cello ☕ is the package manager for people who crave a small , simple , extensible , package manager.


[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)


## Features

- 🐞 small , 1.17 **KB** large
- 😃  easy install & usage
- 🚀 build you own **database** of packages , similar to ``scoop``'s buckets

## Installation
 ## Linux:
 ____
 ### prerequisites
 - - -
 - ruby 2.6 or higher
 - latest production zip.:warning: **Nothing but the latest is supported**
 - bundler gem
 
 - - -
 - extract the file called cello.rb & the gemfile into your home directory
 - in your .bashrc or .zshrc add:
  ``` sh
 alias Cello ="ruby ~/cello.rb" 
 ``` 
 - if using fish , in your config.fish add:
 ``` fish
 alias Cello "ruby ~/cello.rb"
 ```
 - and then run 
 ``` sh
 bundle install
 ```
 to install dependencies.
 - Delete the gemfile
 - You should now be able to use Cello. Try:
``` sh 
Cello add getting-started
```
## macos
- - -
### prereqisites 
----
 - extract the file called cello.rb & the gemfile into your home directory
 - in your .bashrc or .zshrc add:
  ``` sh
 alias Cello ="ruby ~/cello.rb" 
 ``` 
 - if using fish , in your config.fish add:
 ``` fish
 alias Cello "ruby ~/cello.rb"
 ```
 - and then run 
 ``` sh
 bundle install
 ```
 to install dependencies.
 - Delete the gemfile
 - You should now be able to use Cello. Try:
``` sh 
Cello add getting-started --main
```
## windows
---
### prereqisutes
----
- ruby 2.6 or higher
- Cello production zip
- Cello.bat from the `/tools/install/` dir
- bundler gem
---
- Extract the cello.rb & the gemfile into your home directory.
- run ``sh
bundle install
``
- delete the gemfile.
- you should  be good to use Cello!
    
## Usage/Examples
___
A Cello command consist's of 4 parts:
- the *command* , always `Cello`
- the *call* , something like `add` 
- the *package* the name of the package
- the *tray* essentialy the database of your choice , a github repo of `ini` files . The tray is either `main` or `AuthorsGHUsername/TheirRepoName` in format : username/repo . With a `--` in front.


## License

[MIT](https://choosealicense.com/licenses/mit/)

