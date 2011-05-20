# dot-invoke to make sure ENV changes stick: . ~/setup-ssh.sh
# make sure ssh-agent is running by now

{
	echo "export SSH_AUTH_SOCK=`find /tmp/ssh-* -type s`"
	echo "export SSH_AGENT_PID=`ps auxww | grep ssh-agent | grep -v grep | sed 's/[ ][ ]*/ /g' | cut -d' ' -f2`"
} > ~/ssh_agent

. ~/ssh_agent

# add your keys here
ssh-add ~/.ssh/pmv-keys
