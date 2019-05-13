echo "Adding config files to bashrc"
if [ ! -f $HOME/.bashrc ]; then
  touch $HOME/.bashrc
fi

if ! grep -q "testStringBananaCreme" $HOME/.bashrc; then
  cat ./.bash_config >> $HOME/.bashrc
fi

echo "Adding aliases"
if [ ! -f $HOME/.bash_aliases ]; then
  touch $HOME/.bash_aliases && echo "source ~/.bash_aliases" >> $HOME/.bashrc
fi

if ! grep -q "testStringBananaCreme" $HOME/.bash_aliases; then
  cat ./bash_aliases>> $HOME/.bash_aliases
fi

echo 'Adding Functions'
if [ ! -f $HOME/.bash_functions ]; then
  touch $HOME/.bash_functions && echo "source ~/.bash_functions" >> $HOME/.bashrc
fi

if ! grep -q "testStringBananaCreme" $HOME/.bash_functions; then
  cat ./.functions >> $HOME/.bash_functions
fi

echo 'Re-sourcing bashrc'
source $HOME/.bashrc

echo 'Adding git ignore rules'
if [ ! -f $HOME/.gitignore_global ]; then
  touch $HOME/.gitignore_global &&  git config --global core.excludesfile ~/.gitignore_global
fi
if ! grep -q "testStringBananaCreme" $HOME/.gitignore_global; then
  cat .ignore >> $HOME/.gitignore_global
fi
