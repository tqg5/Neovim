sudo apt update
sudo apt install git make cmake npm rustup cargo
npm install typescript typescript-language-server
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
