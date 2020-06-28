# INSTALLATION SCRIPT

# Install oh-my-zsh and set zsh as the default shell
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) $LOGNAME # Change shell to zsh for the currently logged in user (i.e. not root) 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create symbolic links to dotfiles
ln --symbolic ~/Desktop/dotfiles/Tommy/.vimrc ~/.vimrc --force
ln --symbolic ~/Desktop/dotfiles/Tommy/.zshrc ~/.zshrc --force

# Fix the caps lock problem
chmod +x ../Scripts/caps_lock.sh
echo 'description     "fix ubuntu caps lock problem"' > /etc/init/caps_lock.conf
echo "start on startup
task
exec $HOME/Desktop/dotfiles/Scripts/caps_lock.sh" >> /etc/init/caps_lock.conf
