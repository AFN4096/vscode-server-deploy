commit_id=$1

# Download url is: https://update.code.visualstudio.com/commit:${commit_id}/server-linux-x64/stable
curl -sSL "https://update.code.visualstudio.com/commit:${commit_id}/server-linux-x64/stable" -o /tmp/vscode-server-linux-x64.tar.gz

rm -rf ~/.vscode-server/bin/${commit_id}
mkdir -p ~/.vscode-server/bin/${commit_id}

# assume that you upload vscode-server-linux-x64.tar.gz to /tmp dir

tar zxvf /tmp/vscode-server-linux-x64.tar.gz -C ~/.vscode-server/bin/${commit_id} --strip 1
touch ~/.vscode-server/bin/${commit_id}/0
