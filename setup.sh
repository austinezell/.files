# # echo "adding config files to bashrc"
# #
# # if [ ! -f $HOME/.bashrc ]; then
# #   touch $HOME/.bashrc
# # fi
# #
# # echo "adding aliases"
# # if [ ! -f $HOME/.bash_aliases ]; then
# #   touch $HOME/.bash_aliases && echo "source ~/.bash_aliases" >> $HOME/.bashrc
# # fi
# #
# # if ! grep -q "testStringBananaCreme" $HOME/.bash_aliases; then
# #   cat ./bash_aliases>> $HOME/.bash_aliases
# # fi
# #
# # if ! grep -q "testStringBananaCreme" $HOME/.bashrc; then
# #   cat ./.bash_config >> $HOME/.bashrc
# # fi
# #
# # source $HOME/.bashrc
# #
# # echo "installing nvm"
# # if [ ! -d $HOME/.nvm ]; then
# #   wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
# #   source $HOME/.bashrc $HOME/.bash_profile
# # fi
# #
# # echo "adding git ignore rules"
# #
# # if [ ! -f $HOME/.gitignore_global ]; then
# #   touch $HOME/.gitignore_global &&  git config --global core.excludesfile ~/.gitignore_global
# # fi
#
# cat .ignore >> $HOME/.gitignore_global


echo \n\n\n
echo "install node and run nconfig"
