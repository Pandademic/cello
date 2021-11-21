
# Cello 
Cello  is the package manager for people who crave a small , simple , extensible , package manager.


[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)


## Features

- 🐞 small , 1.17 **KB** large
- 😃  easy install & usage
- 🚀 build you own **database** of packages , similar to ``scoop``'s buckets
## Installation
___
:warning: this section is currently a WIP
<!-- Build installation instructions-->
## Usage/Examples
___
A Cello command consist's of 4 parts:
- the *command* , always `cello` or `ce`
- the *call* , something like `add` 
- the *package* the name of the package
- the *tray* essentialy the database of your choice , a github repo of `ini` files . The tray is either `main` or `AuthorsGHUsername/TheirRepoName` in format : username/repo . With a `--` in front.
An Example:
``sh
cello add brew --main
``

## License

[MIT](https://choosealicense.com/licenses/mit/)

