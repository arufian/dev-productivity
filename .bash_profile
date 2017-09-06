# ultimate stash list
alias gitlist='git stash list | while IFS=: read STASH ETC; do echo "$STASH: $ETC"; git diff --stat $STASH~..$STASH --; done'

# load nvm
export NVM_DIR="/c/Users/Admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

# ou yeah, you got mac osx command there
alias open="explorer"

# purify your local git branch
alias gbr="git branch | grep -v 'master' | xargs git branch -D"

# advance technology (ui) of git branch
alias gitbradv="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# always 
export PATH=$PATH:/c/Users/Admin/AppData/Local/Android/sdk/platform-tools

# You can unplug the cable now to run your react native app from your device
# TODO: please change _IP_ to your IP
export REACT_NATIVE_PACKAGER_HOSTNAME='_IP_' # ex: 192.168.30.111

# or you still wish to run with a cable painlessly
alias run_packager="adb -s 513049e6 reverse tcp:8081 tcp:8081 && npm start"

# silently use Android Studio JRE instead of installed a new one
export PATH=$PATH:'/c/Program Files/Android/Android Studio/jre/bin'

# reactotron need this masterpice to run
alias reactotron="adb reverse tcp:9090 tcp:9090"

# at last you can make you apk and release your awesome app to the world
alias bundle_app="react-native bundle --platform android --dev false --entry-file index.android.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/"alias gitlist='git stash list | while IFS=: read STASH ETC; do echo "$STASH: $ETC"; git diff --stat $STASH~..$STASH --; done'