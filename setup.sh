#! /bin/bash
FILES_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Adding config files to bashrc"
if [ ! -f $HOME/.bashrc ]; then
  touch $HOME/.bashrc
fi

# Functions needs to go first because it defines `include`
echo 'Adding Functions'
if [ ! -f $HOME/.bash_functions ]; then
  touch $HOME/.bash_functions && echo "source ~/.bash_functions" >> $HOME/.bashrc
fi

echo "Adding aliases"
if [ ! -f $HOME/.bash_aliases ]; then
  touch $HOME/.bash_aliases && echo "source ~/.bash_aliases" >> $HOME/.bashrc
fi

echo 'Re-sourcing bashrc'
source $HOME/.bashrc

echo 'Adding git ignore rules'
if [ ! -f $HOME/.gitignore_global ]; then
  touch $HOME/.gitignore_global &&  git config --global core.excludesfile ~/.gitignore_global
fi
if ! grep -q "testStringBananaCreme" $HOME/.gitignore_global; then
  cat $FILES_DIR/.ignore >> $HOME/.gitignore_global
fi
