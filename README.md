# MY VIM SETTING
## 1. Introdution
This is not something of software. I upload my .vimrc(VIM setting) file.

___HAVE A HAPPY HACKING TIME~___

## 2. How to use(Ubuntu 16.04 and later)
At first, You should get Vundle package which is plugin management in .vim/bundle/ after git clone.
```
$ git clone https://github.com/VundleVim/Vundle.vim.git
```
And then If you want to use 'youcompleteme' plugin, You should set it up.
YCM is a plugin with a compiled component. If you update YCM using Vundle and the ycm_core library APIs have changed (happens rarely), YCM will notify you to recompile it. You should then rerun the install process.

Install development tools, CMake, and Python headers:
```
$ sudo apt install build-essential cmake python3-dev
```

I just want to get semantic support for C-family languages through libclang.

```
$ sudo apt install python2.7 python-pip
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
```



## 2. Plugins I used

