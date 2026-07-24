#-------------------------------------------
# Setup Agent Node
# ------------------------------------------
sudo apt update -y
sudo apt install fontconfig openjdk-21-jre -y
java -version

sudo adduser jenkins
# Set password

# Give Sudo Access
sudo usermod -aG sudo jenkins
sudo mkdir -p /home/jenkins/.ssh


#----------------------------------------------
#On MASTER:
# ----------------------------------------------

sudo su - jenkins
ssh-keygen
#Copy Public Key from Master
cat /var/lib/jenkins/.ssh/id_ed25519.pub


#-------------------------------------
# On AGENT:
#-------------------------------------

sudo vi /home/jenkins/.ssh/authorized_keys
# Paste key.
sudo chown -R jenkins:jenkins /home/jenkins/.ssh
sudo chmod 700 /home/jenkins/.ssh
sudo chmod 600 /home/jenkins/.ssh/authorized_keys

# Test SSH from Master
sudo su - jenkins
ssh jenkins@172.31.36.26

# --------------------------------------------------
# Add the node in Jenkins UI with below details:
# --------------------------------------------------

Number of executors 2

Remote root directory
/home/jenkins

Labels
linux

Launch method
launch agent via SSH

Host
172.31.33.28

Credentials
Add new credentials
Kind
SSH Username with private key

Scope - Global
Id
agent-key
Description
jenkins-agent-ssh-key
Username
jenkins #This is the user existing on agent machine.
Private Key
# paste the private key generated on master machine.
sudo cat /var/lib/jenkins/.ssh/id_ed25519
Passphrase
Leave empty

Host Key Verification Strategy
Non verifying Verification Strategy



# USERDATA SCRIPT FOR AGENT NODE

sudo apt update -y
sudo apt install fontconfig openjdk-21-jre -y
java -version

sudo adduser jenkins
# Set password

# Give Sudo Access
sudo usermod -aG sudo jenkins
sudo mkdir -p /home/jenkins/.ssh
wget https://s3.amazonaws.com/s3/id_ed25519.pub

sudo mv id_ed25519.pub /home/jenkins/.ssh/authorized_keys
# Paste key.
sudo chown -R jenkins:jenkins /home/jenkins/.ssh
sudo chmod 700 /home/jenkins/.ssh
sudo chmod 600 /home/jenkins/.ssh/authorized_keys