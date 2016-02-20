echo -e "\n\n RUNNING CENTOS INIT\n\n"
yum -y  groupinstall "Development Tools"
yum -y install man tmux nmap vim node tree ack dig cmake cowsay git curl zsh python-devel
