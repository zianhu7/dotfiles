#!/usr/bin/env bash

# Path to the bash it configuration

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export RES=~/Desktop/research/LQR
export GOHOME=$GOPATH/src
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:~/Desktop/research/LQR
export BASH_IT="/Users/zian.hu/.bash_it"
export GYMPATH=/usr/local/lib/python2.7/site-packages/gym
export DEDUP=$GOPATH/src/ideal-deduplication
export RAY=~/Desktop/research/ray/python/ray
export RL=$RAY/rllib

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='Bakke'
unset MAILCHECK
# Load Bash It
source "$BASH_IT"/bash_it.sh
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export PATH=~/anaconda3/bin:$PATH
. /Users/zian.hu/anaconda3/etc/profile.d/conda.sh
