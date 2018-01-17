cat pod.pub     >> ~/.ssh/authorized_keys
cat pod.service >> ~/.ssh/config
cp pod ~/.ssh
mkdir -p ~/bin
cp bin/* ~/bin
