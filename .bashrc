#Bash Startup Files
#When a "login shell" starts up, it reads the file "/etc/profile" and then "~/.bash_profile" or "~/.bash_login" or "~/.profile" (whichever one exists - it only reads one of these, checking for them in the order mentioned).
#
#When a "non-login shell" starts up, it reads the file "/etc/bashrc" and then the file "~/.bashrc".
#

# VMWARE STATIC IPS:
# "./Library/Preferences/VMware Fusion/vmnet8/dhcpd.conf"

# PISTON COMMANDS ON THE COMMAND LINE:
#
# Run a command that queries our product:
#
# dev -a run "df -h"
# just list root partition
# dev -a run "df -h /" | grep -v Running
#

# SORT BASED ON SIZE:
alias=findb_ig="find . -type f -ls | sort -r -n -k7"

#Note that when bash is invoked with the name "sh", it tries to mimic the startup sequence of the Bourne shell ("sh"). In particular, a non-login shell invoked as "sh" does not read any dot files by default. See the bash man page for details.
#
## ALIASES:
##
#
if [ `uname` == "Linux" ]
then
    alias ls="ls --color"
else
    alias ls="ls -G"
fi

#
# PYLINT:
#
# This script generates code to replace a number of things with error messages and colors, (Lundy)
# # pylint --list-msgs | grep '^:' | sed -e 's|^:||g' -e 's| (| |g' -e 's|).*||g' | sed -e 's|^|MAP["|g' -e 's| |"]="|g' -e 's|$|"|g'
# GIST:
# https://gist.github.com/novas0x2a/14cbf84a777de872b734
#
#
#
# API access to a piston cluster:
alias piston="source ~/admin-openrc.sh"

###############################################################################
#
#####################
# OPENSTACK COMMANDS:
#####################
#
#########
# GLANCE:
#########
# GLANCE IMAGE CREATE:
#
# glance image-create --file ~/onibla.vhd --name "onibla daymanc import 1" --disk-format vhd --container-format bare
# glance image-create --file ~/onibla.vhd --name "onibla daymanc import 1" --disk-format VHD
#
#
#######
# NOVA:
#######
# status of all images: 
# nova image-show
# status of a specific image?
# nova image-show <image-hash-id>
#
#
###############################################################################
#
#######
# QEMU:
#######
#
# boot off an ISO:
#qemu-system-x86_64 -cdrom ~daymanc/Downloads/ubuntu-12.04.4-desktop-amd64.iso
#qemu-system-x86_64 -hda ubuntu-img1.img -cdrom ~daymanc/Downloads/ubuntu-12.04.4-desktop-amd64.iso

# create a new image:
# qemu-img create ubuntu-img1.img 2G

# boot iso to a new image:
#qemu-system-x86_64 -hda ubuntu-img1.img -cdrom ~daymanc/Downloads/ubuntu-12.04.4-desktop-amd64.iso -boot d

alias rehash=". ~/.bashrc"

alias updates="ssh daymanc@updates.piston.cc"
alias download="ssh daymanc@download.piston.cc"

# Bootstrap machines here!
#ssh daymanc@hq-int-hv2
alias bootstrap="ssh daymanc@hq-int-hv2.piston.cc"

#alias du="du -a|awk '{print \$2}'"

#
alias rgrep="grep -r"

alias lt="ls -rlt"
alias vi="vim"
alias rm="rm -i"

alias p="python"
alias py="python"

alias h="history"
alias tree="tree -C"

# SSH STUFF:
#
alias vm1="ssh daymanc@192.168.35.132"
alias vm1root="ssh root@192.168.35.132"
alias smurf="ssh $USER@smurf.piston.cc"
alias smurfr="ssh root@smurf.piston.cc"
alias smurfroot="ssh root@smurf.piston.cc"

alias ubuntu2="ssh daymanc@192.168.35.139"

# Actually, rebase saves your starting point to ORIG_HEAD so this is usually as simple as:
# git reset --hard ORIG_HEAD

# 
# 1) git reflog
# find the ref point you wanna reset to.. say, it's number 1:
# then:
# git reset --hard HEAD@{1}
# you're at that point

# TAGS:
# git log --pretty=format:"Tagger: %an <%ae>%nDate: %ad%n%n%b" -1 va.b.c
alias tagdate="git log --pretty=format:\"Tagger: %an <%ae>%nDate: %ad%n%n%b\" -1"

# REF LOG:
alias gref="git reflog"

alias gf="git fetch $USER"
alias gfp="git fetch piston"

alias gs="git status"
alias gsv="git status -v"

alias gd="git difftool -y"
alias gdiff="git difftool -y"

alias gr="git remote"
alias grv="git remote -v"

# everything
alias gl="git log"
alias glog="git log --pretty=oneline --graph --decorate --all"
alias grename="git remote rename origin piston"

alias gc="git checkout"
alias gb="git branch"
alias gba="git branch"

alias gch="git whatchanged"
alias gchanged="git whatchanged"

##########
# GIT LOG:
##########
# git log --name-status
# git log --name-only
# git log --stat
# git log --graph



# If you want to get the file names only without the rest of the commit message you can use:
# 
# git log --name-only --pretty=format: <branch name>
# This can then be extended to use the various options that contain the file name:
# 
# git log --name-status --pretty=format: <branch name>
# 
# git log --stat --pretty=format: <branch name>
#
# One thing to note when using this method is that there are some blank lines in the output that will
# have to be ignored. Using this can be useful if you'd like to see the files that have been changed on a
# local branch, but is not yet pushed to a remote branch and there is no guarantee the latest from the remote 
# has already been pulled in. For example:
# 
# git log --name-only --pretty=format: my_local_branch --not origin/master
#
# Would show all the files that have been changed on the local branch, but not yet merged to the master branch on the remote.
# 
# function cloneme() { git clone git@github.com/$USER/$1 ;}
# #alias cloneme="git clone git@github.com/$USER/$1"
# #function cloneme() { /path/to/command "$@" ;}
# 
##############
# END GIT LOG:
##############



#######################################################
# internal network machines
# 1)
alias hqldap="ssh daymanc@hq-ldap"

# will behave like smurf eventually
# 2)
alias hqgateway="ssh daymanc@hq-gateway.piston.cc"
#######################################################


alias wb1="ssh $USER@wheelbarrow-1.piston.cc"
alias wb1r="ssh root@wheelbarrow-1.piston.cc"
alias wb1root="ssh root@wheelbarrow-1.piston.cc"

alias wb2="ssh $USER@wheelbarrow-2.piston.cc"
alias wb2r="ssh root@wheelbarrow-2.piston.cc"
alias wb2root="ssh root@wheelbarrow-2.piston.cc"

alias wb3="ssh $USER@wheelbarrow-3.piston.cc"
alias wb3r="ssh root@wheelbarrow-3.piston.cc"
alias wb3root="ssh root@wheelbarrow-3.piston.cc"

alias wb4="ssh $USER@wheelbarrow-4.piston.cc"
alias wb4r="ssh root@wheelbarrow-4.piston.cc"
alias wb4root="ssh root@wheelbarrow-4.piston.cc"

alias wb5="ssh $USER@wheelbarrow-5.piston.cc"
alias wb5r="ssh root@wheelbarrow-5.piston.cc"
alias wb5root="ssh root@wheelbarrow-5.piston.cc"

alias ins="ssh $USER@insanity.piston.cc"
alias insane="ssh $USER@insanity.piston.cc"

alias alb="ssh $USER@albino.piston.cc"
alias albino="ssh $USER@albino.piston.cc"

# ALBINO STORING JENKINS JOBS/LOGS:
# root@albino:/var/lib/jenkins/jobs/
# root@albino:/var/lib/jenkins/jobs/Functional_Tests/builds

# My remote VMs:
alias remote1="ssh daymanc@onibla.piston.cc"
alias onibla="ssh daymanc@onibla.piston.cc"

alias viz="ssh daymanc@vizzini.piston.cc"
alias vizzini="ssh daymanc@vizzini.piston.cc"
# onobla original IP: 23.253.63.217


# ========================
# REMOTE BUILDBOT MACHINE:
# NOTE: for some reason SCP isn't working for file transfers to remote machine, there's no FW on it so it may be
#       an intermediate FW issue..
# ========================
bb_ip="23.253.63.217"
bb_hostname="onibla.piston.cc"


# for good recursive DIR creation to remote host: use -R <dir>
alias fbb="ncftp  -u dayman $bb_ip"
alias bb="ssh dayman@$bb_ip"

# build bot machine:
#alias bb="dayman@onibla.piston.cc"

# ============================
# BUILDBOT COMMAND LINE STUFF:
# ============================
#
alias bbrebuild="buildbot reconfig master"



# EXPORT:
#
#export USER="dayman"

#PATH="$PATH:/usr/local/bin"
#export $PATH
#export GIT_DIR="/Users/daymanc/piston/"

# 'cc' compiler:
# To not raise an error with the -mno-fused-madd flag, as it's not supported for this version of CC:
#
# You can tell clang to not raise this as an error by setting the following environment variables prior compilation:
#
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
#
#

if [ -z "$SHELL" ]
then
	echo "Error: ENV var not set"
	exit 1
else
	echo "ENV VAR IS SET!"
fi

# the iocane build would be to build the entire open stack environment, this takes a really long time.


#if [ -z "$GITHUB_OWNER" -o -z "$GITHUB_BRANCH" -o -z "$FORCE_IOCANE_REBUILD" -o -z "$RUN_UNIT_TESTS" ] ; then
	#echo "Error: required GIT var is not set"
#fi

if [ -f /etc/bashrc ]; then
   #
   # read etc's bash as well if it's there
   #
   . /etc/bashrc
fi
