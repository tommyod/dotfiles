# INSTALLATION SCRIPT

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
