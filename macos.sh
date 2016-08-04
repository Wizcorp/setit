# Inspired by: http://www.mokacoding.com/blog/how-to-install-xcode-cli-tools-without-gui/

function get_env() {
  softwareupdate -l \
      | grep "\*.*Command Line" \
      | head -n 1 \
      | awk -F"*" '{print $2}' \
      | sed -e 's/^ *//' \
      | tr -d '\n'
}

echo "Checking Xcode CLI tools"
xcode-select -p &> /dev/null

if 
  [ $? -ne 0 ]
then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
  softwareupdate -i "$(get_env)" -v
else
  echo "Xcode CLI tools OK"
fi

echo "Installing brew & brew cask"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

brew install nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo 'source "$(brew --prefix nvm)/nvm.sh"' >> ~/.bash_profile

brew install git

brew cask install google-chrome
brew cask install unity-download-assistant
brew cask install atom
brew cask install visual-studio-code