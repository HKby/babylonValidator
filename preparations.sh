sudo apt update && sudo apt upgrade -y

# get instance id and make it a variable
MONIKER=`curl http://169.254.169.254/metadata/v1/hostname`

# Install Build Tools
sudo apt -qy install curl git jq lz4 build-essential

# Install GO
sudo rm -rf /usr/local/go
curl -Ls https://go.dev/dl/go1.20.12.linux-amd64.tar.gz | sudo tar -xzf - -C /usr/local
eval $(echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee /etc/profile.d/golang.sh)
eval $(echo 'export PATH=$PATH:$HOME/go/bin' | tee -a $HOME/.profile)

echo "step1 preparations.sh completed"