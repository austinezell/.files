#! /bin/bash
FILES_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

CONFIG_LOCATION="$FILES_DIR/.bash_config"
INCLUDE_CONFIG="include $CONFIG_LOCATION"

ALIAS_LOCATION="$FILES_DIR/.aliases"
INCLUDE_ALIAS="include $ALIAS_LOCATION"

FUNCTION_LOCATION="$FILES_DIR/.functions"
INCLUDE_FUNCTION="include $FUNCTION_LOCATION"


# Source functions for the include function
source $FILES_DIR/.functions


echo "Adding config files to bashrc"
if [ ! -f $HOME/.bashrc ]; then
  touch $HOME/.bashrc
fi


if ! grep -q "$INCLUDE_CONFIG" $HOME/.bashrc; then
  echo "$INCLUDE_CONFIG" >> $HOME/.bashrc
fi

echo "Adding aliases"
if [ ! -f $HOME/.bash_aliases ]; then
  touch $HOME/.bash_aliases && echo "source ~/.bash_aliases" >> $HOME/.bashrc
fi

if ! grep -q $INCLUDE_ALIAS $HOME/.bash_aliases; then
  echo $INCLUDE_ALIAS >> $HOME/.bash_aliases
fi

echo 'Adding Functions'
if [ ! -f $HOME/.bash_functions ]; then
  touch $HOME/.bash_functions && echo "source ~/.bash_functions" >> $HOME/.bashrc
fi

if ! grep -q "$INCLUDE_FUNCTION" $HOME/.bash_functions; then
  echo "$INCLUDE_FUNCTION" >> $HOME/.bash_functions
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
