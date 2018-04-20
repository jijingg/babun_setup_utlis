## babun 环境设置 ##
----------
### 1: babun install 

>download latest babun ,unzip and click shell to install 

### 2: python setup

>1.  download python3.5.exe  click install(not pact install python into babun)
>2.  add alias python="/cygdrive/d/Program\ Files\ \(x86\)/Python35-32/python" to ~/.alias 
>3.  add alias python2="/usr/bin/python" to ~/.alias 

### 3: setup shell enviroment

>1.  cp .func ~/      #usefull utilus cmd tools 
>2.  cp .alias  ~/    #custom personal alias 
>3.  cp .my_shell  ~/ #set my custom shell enviroment 
>4.  add "source .my_shell" to ~/.zshrc to autoload my custom enviroment

### 4: setup vim enviroment

>1.  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
>2.  cp .vundlerc ~/  #vundle setup andd plugin add to .vundlerc
>3.  cp .vimrc ~/     #custom vim setup ,and add "source ~/.vundlerc" into .vimrc 
>4   vim , :PluginList ,:PluginInstall to install all plugin which specify in .vundlerc

### 5: setup gvim 

>1.  download gvim8.0.exe click install to "d:/Program/Vim/" !!!make sure no space in path(not pact install gvim into babun)
>2.  cp [cyg-wrapper.sh][1] ~/bin #this shell make windows and linux path type compatiable
>3.  add alias gvim='cyg-wrapper.sh "d:/Program/Vim/vim80/gvim.exe" --fork=1' to ~/.alias 
>4.  export VIM="d:/Program/Vim/vim80/" #default VIM is ="/etc" and this change will cause vim not work correctly
>5.  cp /etc/vimrc /cygdrive/d/Program/Vim/vim80 #to make sure vim work
>6.  cp ~/.vim/colors/*.vim to /cygdrive/d/Program/Vim/vim80/colors #to make sure colorscheme "ir_black" can be found
>7.  now gvim and vim will use same .vimrc setup and plugin in ~/.vim/bundle

Now type gvim in terminal you can found the look as same as open gvim.exe in widows 

### 5: bcompare command cant recognize windows path 

>1.  cd d:/Program/; mkdir bc4/ 
>2.  ln -s ../../Program Files/Beyond Compare 4/BCompare.exe
>3.  add alias bc4='cyg-wrapper.sh "D:/Program/bc4/BCompare.exe" --fork=1'  to ~/.alias 
>3.  bc4 xx1 xx2  can automatic recognize linux path and windows path


  [1]: https://github.com/LucHermitte/Bash-scripts/blob/master/cyg-wrapper.sh

