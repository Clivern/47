cd /tmp

# Install Pet CLI Snippet Manager
export PET_VERSION=0.3.6
curl -sL https://github.com/knqyf263/pet/releases/download/v{$PET_VERSION}/pet_{$PET_VERSION}_darwin_amd64.tar.gz | tar xz
mv pet /usr/local/bin/
