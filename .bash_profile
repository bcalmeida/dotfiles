# Powerline
# Needed so powerline commnad is found
if [ -d "$HOME/Library/Python/2.7/bin" ]; then
    PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/bruno/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh #. {powerline root directory (pip show powerline-status)}/powerline/bindings/bash/powerline.sh

# homebrew
# Packages installed via homebrew have priority over anyone
export PATH=/usr/local/bin:$PATH

# Postgres.app
# Needed to access the command line tools
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# autoenv
# Sources whatever is in .env when cd'ing to the directory
# Good for virtual environment and environment variables
source /usr/local/opt/autoenv/activate.sh

# Vi mode
# set -o vi
