# INSTALLATION SCRIPT

# Install packages using apt
apt update
apt upgrade --yes

# This has a propt, so do it first
apt install ffmpeg --yes -q -q

apt install aptitude --yes -q -q
apt install artha --yes -q -q
apt install bcmwl-kernel-source  --yes -q -q
apt install build-essential --yes -q -q
apt install cmatrix --yes -q -q
apt install cowsay --yes -q -q
apt install curl --yes -q -q
apt install darktable --yes -q -q
apt install geogebra --yes -q -q
apt install gimp --yes -q -q
apt install git --yes -q -q
apt install gnome-control-center --yes -q -q
apt install gnome-online-accounts --yes -q -q
apt install htop --yes -q -q
apt install inkscape --yes -q -q
apt install laptop-mode-tools --yes -q -q
apt install linux-headers-generic --yes -q -q
apt install make --yes -q -q
apt install python3-dev --yes -q -q
apt install qbittorrent --yes -q -q
apt install ranger --yes -q -q
apt install ruby  --yes -q -q
apt install ruby-bundler --yes -q -q
apt install ruby-dev --yes -q -q
apt install snap --yes -q -q
apt install texlive-full --yes -q -q
apt install texstudio --yes -q -q 
apt install tmux --yes -q -q
apt install tree --yes -q -q
apt install ubuntu-restricted-extras --yes -q -q
apt install ufraw-batch --yes -q -q
apt install unity-tweak-tool --yes -q -q
apt install vim --yes -q -q
apt install weechat --yes -q -q
apt install whois --yes -q -q
apt install zsh --yes -q -q

# Install packages from snappy
snap install atom --classic
snap install postman
snap install pycharm-professional --classic
snap install slack --classic
snap install spotify
snap install sublime-text --classic
snap install vlc

# Install anaconda
# Download, make executable, install silently, remove .sh and update
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
chmod +x Anaconda3-2019.03-Linux-x86_64.sh
./Anaconda3-2019.03-Linux-x86_64.sh -b -p $HOME/anaconda3
rm Anaconda3-2019.03-Linux-x86_64.sh
export PATH=$HOME/anaconda3/bin:$PATH
chmod -R a+rwx $HOME/anaconda3 # Permissions. Recursive, read, write and execute.
conda update --name base --channel defaults conda --yes 
conda update --all --yes
pip install --upgrade black cvxopt ortools pytest jinja2 google-cloud-core google-api-core oauthlib lxml docker tqdm beautifulsoup4 

# Install oh-my-zsh and set zsh as the default shell
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh) $LOGNAME # Change shell to zsh for the currently logged in user (i.e. not root) 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create symbolic links to dotfiles
ln --symbolic ~/Desktop/dotfiles/.vimrc ~/.vimrc --force
ln --symbolic ~/Desktop/dotfiles/.zshrc ~/.zshrc --force

# Fix the caps lock problem
chmod +x caps_lock.sh
echo 'description     "fix ubuntu caps lock problem"' > /etc/init/caps_lock.conf
echo "start on startup
task
exec $HOME/Desktop/dotfiles/caps_lock.sh" >> /etc/init/caps_lock.conf

# Git clone every repo
mkdir -p ~/Desktop/github
GHUSER='tommyod'
# clone all repositories for user specifed
for repo in `curl -s https://api.github.com/users/$GHUSER/repos?per_page=100 | grep git_url | awk '{print $2}'| sed 's/"\(.*\)",/\1/'`; do
    cd ../github/;
    git clone $repo;
    cd ../dotfiles/;
done;
