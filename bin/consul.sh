cd /tmp

export CONSUL_VERSION=1.9.5
echo "Installing Consul v$CONSUL_VERSION"

curl -sS https://releases.hashicorp.com/consul/{$CONSUL_VERSION}/consul_{$CONSUL_VERSION}_darwin_amd64.zip > consul.zip

unzip consul.zip

chmod +x ./consul

mv -f consul /usr/local/bin/consul

rm consul.zip