# .bash_profile
export PATH=/opt/centos/devtoolset-1.1/root/usr/bin/:$PATH

alias climate="cd /prod/www/template/manmade/Pages/Climate"
alias graphics="cd /mnt/s3/prod/www/apache/htdocs/data/climate_images"
alias b="cd /netapp1/prod/www/apache/htdocs/hurricane/2014"
alias blog="vim /prod/www/template/manmade/Pages/Resources/blog_archive/jeffmastersblog.cst"
alias tropics="vim /prod/www/template/manmade/Parts/TropicExtLinks.cst"
alias tropics2="vim /prod/www/template/manmade/Parts/TropicHurrArchive.cst"
alias ll="ls -lat | more"
alias cda="cd /software/dist/admin/AS5000"
alias cdc="cd /code/www/findweather/hdf"
alias cdh="cd /prod/www/apache/htdocs"
alias sassy="cd /prod/www/apache/htdocs/scss"
alias cdt="cd /prod/www/template/omnibus"
alias cdm="cd /prod/www/template/manmade"
alias news="cd /mnt/s3/news"
alias cdwm="cd /prod/www/apache/htdocs/scripts/wundermap/src/dev/"
alias cdpd="cd /prod/www/template/manmade/Pages/WeatherStation/Dashboard"
alias cdbrands="cd /software/dist/newspaper/newspaper/brands"
alias cdpapers="cd /software/dist/newspaper/newspaper/papers"
alias cdscrapers="cd /prod/www/apache/htdocs/autoasp/scrapers"
alias cdmachines="cd /software/dist/types"

db() { ssh -i .ssh/WUTECH.pem ec2-user@int-"$1"; sudo su -;}


# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi

export WUI_BUILD_ROOT=/code

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/usr/local/bin/

export PATH

# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
source ~/.git-prompt.sh
export PS1="\[$(tput bold)\](\t)[\[$(tput setaf 6)\]\u@\h\[\$(tput setaf 2)\] \w]\[$(tput setaf 5)\]\$(__git_ps1) > \[$(tput sgr0)\]"

#Make git log awesome
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
