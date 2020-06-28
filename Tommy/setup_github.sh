# Git clone every repo
mkdir -p ~/Desktop/github
GHUSER='tommyod'
# clone all repositories for user specifed
for repo in `curl -s https://api.github.com/users/$GHUSER/repos?per_page=100 | grep git_url | awk '{print $2}'| sed 's/"\(.*\)",/\1/'`; do
    cd ../../github/;
    git clone $repo;
    cd ../dotfiles/Tommy/;
done;

# Git setup - cache PW for a year
git config --global user.name "tommyod"
git config --global credential.helper 'cache --timeout=31536000'
