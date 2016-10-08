# Mac setup details

## Bootstrap

Install Xcode tools, follow onscreen prompts

    xcode-select --install
    
Install homebrew, follow prompts within terminal

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
## Package installations

Install packages (first run through requires sudo so do one package before any scripted installs)

brew install vim
brew install git

bash <(curl -fsSL https://raw.githubusercontent.com/greenbrian/xy.violator-467f46/master/setup.sh)


    
## Updating brew and packages

    brew update
    brew upgrade
