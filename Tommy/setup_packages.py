import os
import subprocess

# ===============================================================
# ============== apt : packagemanagement system. ================
# ===============================================================

PPAs = ["ppa:peek-developers/stable"]
for PPA in PPAs:
    return_code = subprocess.call(["add-apt-repository", PPA, "--yes"])
    assert not return_code

return_code = subprocess.call(["apt", "update"])
assert not return_code

return_code = subprocess.call(["apt", "upgrade", "--yes"])
assert not return_code






programs = ["vlc", "texstudio", "texlive-full", "vim", "git", "ranger", "zsh",
"geogebra", "make", "tmux", "curl", "whois", "htop", "peek", "tree"]


for program in programs:
    return_code = subprocess.call(["apt", "install", program, "--yes", "-q"])
    assert not return_code
    
    

    
# ===============================================================
# ======== Snaps : packages that work across Linux distros ======
# ===============================================================
return_code = subprocess.call(["snap", "refresh"])
assert not return_code
    
programs = ["postman", "slack", "skype", "spotify", "google-cloud-sdk", "chromium"]


for program in programs:
    return_code = subprocess.call(["snap", "install", program, "--classic"])
    assert not return_code
    
    
return_code = subprocess.call(["snap", "refresh"])
assert not return_code
