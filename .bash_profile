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
set -o vi
