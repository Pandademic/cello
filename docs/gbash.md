Git bash provides a linux/unix like enviorment on windows using bash. Since latte doesn't add it self to path or anything of such , 
it uses alias in a the config of the terminal to point ruby to run a specific file. Since you can't do this in any windows terminal that I am aware of ,
We do it via .bashrc in the git bash.You will only be able to use it in git bash.
To access your git bashes .bashrc:
Inside of your git bash run :
``` sh
vim ~/.bashrc
```
and add :
``` sh
alias latte = "ruby ~/latte"
```
**REMEMBER TO DOWN LOAD YOUR LATTE FILE TO THE HOME DIRECTORY ,EX: C://user/you/latte **
