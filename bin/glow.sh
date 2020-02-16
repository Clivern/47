cd /tmp

export GLOW_VERSION=0.1.3
export GLOW_LATEST_VERSION=$(curl --silent "https://api.github.com/repos/charmbracelet/glow/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/')
echo "Installing Glow v$GLOW_VERSION. Latest version is $GLOW_LATEST_VERSION"

curl -sL https://github.com/charmbracelet/glow/releases/download/v{$GLOW_VERSION}/glow_{$GLOW_VERSION}_Darwin_x86_64.tar.gz | tar xz

chmod +x ./glow

mv -f glow /usr/local/bin/glow
