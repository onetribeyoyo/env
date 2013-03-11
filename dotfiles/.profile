
cygwin=false;
darwin=false;
case "`uname`" in
    CYGWIN*)
        cygwin=true
        echo cygwin=true
        ;;

    Darwin*)
        darwin=true
        echo darwin=true
        ;;
esac

export EMAIL_USER=andy.miller


# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
# Prompts and titles...
# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

function parse_vc_branch() {
    git branch 2> /dev/null | grep \* | awk '{ printf "{git:%s}", $2 }'
    hg branch 2> /dev/null | awk '{ printf "{hg:%s}", $1 }'
}

#export PS1="\n$HOSTNAME:\w[\!]> "
#export PS1="\n\w\n$USERNAME:$HOSTNAME:[\!]> "
#export PS1="\n$USER:\w\n$HOSTNAME[\!]> "
export PS1="\n$USER:\w \$(parse_vc_branch) \n$HOSTNAME[\!]> "
export PS3="Please select one of the options: "
export PS4="+ $0:$LINENO "

# to set the window title...
#function settitle() { echo -n "]0;$@"; }
#function cd() { command cd "$@"; settitle `pwd -P`; }
#settitle `pwd`

#if [ "$TERM_PROGRAM" == "Apple_Terminal" ]
#then
#    export TERM=xterm-256color
#fi


#function elite {
#    local GRAY="\[\033[1;30m\]"
#    local LIGHT_GRAY="\[\033[0;37m\]"
#    local CYAN="\[\033[0;36m\]"
#    local LIGHT_CYAN="\[\033[1;36m\]"
#    local NO_COLOUR="\[\033[0m\]"
#
#    case $TERM in
#        xterm*|rxvt*)
#            local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
#            ;;
#        *)
#            local TITLEBAR=""
#            ;;
#    esac
#
#    local temp=$(tty)
#    local GRAD1=${temp:5}
#    PS1="$TITLEBAR\
#$GRAY-$CYAN-$LIGHT_CYAN(\
#$CYAN\u$GRAY@$CYAN\h\
#$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
#$CYAN\#$GRAY/$CYAN$GRAD1\
#$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
#$CYAN\$(date +%H%M)$GRAY/$CYAN\$(date +%d-%b-%y)\
#$LIGHT_CYAN)$CYAN-$GRAY-\
#$LIGHT_GRAY\n\
#$GRAY-$CYAN-$LIGHT_CYAN(\
#$CYAN\$$GRAY:$CYAN\w\
#$LIGHT_CYAN)$CYAN-$GRAY-$LIGHT_GRAY "
#    PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
#}


# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
# Path and application config.
# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

export TMP=~/tmp

export ANT_HOME=~/devtools/ant/current
export ANT_OPTS=-Xmx128m
#export ANT_OPTS=-Xmx256m

export GRAILS_HOME=~/devtools/grails/current

export GROOVY_HOME=~/devtools/groovy/current

export JAVA_HOME=~/devtools/jdk/current
# here are some JAVA_OPTS that optimize gc, but it is preferable to set
# these on a project by project basis.
#export JAVA_OPTS="-XX:PermSize=128m -XX:MaxPermSize=384m -XX:NewSize=256m -Xmx1024m -server -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"

#export JBOSS_HOME=~/devtools/jboss/current

export MAVEN_HOME=~/devtools/maven/current
export M2_HOME=~/devtools/maven/current
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xmx2100m -Xms512m"

export MYSQL_HOME=/usr/local/mysql

export MONGO_HOME=~/devtools/mongo/current

export CATALINA_HOME=~/devtools/tomcat/current
export TOMCAT_HOME=$CATALINA_HOME

export SQUIRREL_HOME=~/devtools/squirrel-sql/SQuirreLSQL-3.2.1.app/
alias squirrel=$SQUIRREL_HOME/Contents/MacOS/squirrel-sql.sh

export LILYPOND_HOME=/Applications/LilyPond.app
alias ly=lilypond

if $darwin ; then
    # emacs...
    #export EMACS_HOME=~/devtools/emacs/carbon-emacs-22.3.1_2009.07.25.app
    #export EMACS_APP='carbon-emacs-22.3.1_2009.07.25.app'

    #export EMACS_VERSION=23.1.90.1
    #export EMACS_VERSION=23.2
    #export EMACS_VERSION=23.3
    export EMACS_VERSION=23.4.1
    #export EMACS_VERSION=24.2
    export EMACS_HOME=~/devtools/emacs/emacs-${EMACS_VERSION}.app
    export EMACS_APP=emacs-${EMACS_VERSION}.app

    # subversion...
    #export SVN_HOME=/opt/subversion
    #export PATH=$SVN_HOME/bin:$PATH
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Setting the path for MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# fink config...
test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=\
.:\
$HOME/bin:\
$ANT_HOME/bin:\
$EMACS_HOME/bin:\
$GRAILS_HOME/bin:\
$GROOVY_HOME/bin:\
$JAVA_HOME/bin:\
$MAVEN_HOME/bin:\
$MONGO_HOME/bin:\
$MYSQL_HOME/bin:\
~/devtools/git/scripts/ddollar-git-utils:\
$LILYPOND_HOME/Contents/Resources/bin:\
$PATH

# Note: CATALINA_HOME and TOMCAT_HOME will cause local standalone jira scripts to fail!
#export JIRA_HOME=~/devtools/jira/current
#export PATH=$PATH:$JIRA_HOME/bin

function rehome() {
    COMPONENT=$1
    COMPONENT_HOME=`echo ${1}_HOME | tr '[:lower:]' '[:upper:]'`
    LINK_NAME=$2
    NEW_HOME=~/devtools/$COMPONENT/$LINK_NAME

    echo "rehome..."

    echo "   exporting ${COMPONENT_HOME} as $NEW_HOME."
    export $COMPONENT_HOME=$NEW_HOME

    echo "   prepending ${NEW_HOME}/bin to path."
    export PATH=$NEW_HOME/bin:$PATH
}

# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

. .profile.completions

. .aliases
. .projects

#. .guidant.profile
#. .gefleet.profile
#. .mnscu.profile
#. .mdh.profile


# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
# Misc...
# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

# Don't put duplicate lines in the history...
export HISTCONTROL=ignoredups

# Don't close the shell on Crtl-D...
set -o ignoreeof

# Don't have to hit the <Tab> key twice to produce a list of all completions...
set show-all-if-ambiguous

# ls colors...
#export LSCOLORS=`ls-colours`
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
#xport LSCOLORS=dxfxcxdxbxegedabagacad

# grep colors...
export GREP_COLOR='1;31'
export GREP_OPTIONS='--color=auto'




# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

# Echo some config info at shell startup time
# (useful when debugging the shell environment.)

#ppath
#use

# -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
