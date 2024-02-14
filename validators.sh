babylond create-bls-key $(babylond keys show wallet -a)

# restart service
sudo systemctl restart babylon.service

sed -i -e "s|^key-name *=.*|key-name = \"wallet\"|" $HOME/.babylond/config/app.toml
sed -i -e "s|^timeout_commit *=.*|timeout_commit = \"10s\"|" $HOME/.babylond/config/config.toml

babylond status | jq .SyncInfo