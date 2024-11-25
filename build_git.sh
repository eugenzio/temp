#!/bin/bash
# Check if Xcode Command Line Tools are installed
echo "Checking for Xcode Command Line Tools..."

if ! xcode-select -p &> /dev/null; then
    echo "Xcode Command Line Tools not found. Installing..."
    xcode-select --install
    echo "Installation initiated. Please complete the installation and re-run this script."
    exit 1
else
    echo "Xcode Command Line Tools are already installed."
fi

# Check if Git is installed
echo "Checking for Git installation..."

if ! command -v git &> /dev/null; then
    echo "Git not found. Installing Git..."
    # Since Xcode Command Line Tools are already installed, Git should be available
    # If not, you can provide alternative installation methods (e.g., via Homebrew)
    echo "Git should be installed with Xcode Command Line Tools. If not, please install Git manually or via Homebrew."
    exit 1
else
    echo "Git is already installed."
fi

# Check and display Git version
echo "Checking Git version..."
git --version

echo "Git setup complete. Git is ready for use."








# REPO_DIR="repo"
# cd ${REPO_DIR}


# git init
# USERNAME="eugenzio"
# USEREMAIL="eugene201903t@gmail.com"
# git config --global user.name ${USERNAME}
# git config --global user.email ${USEREMAIL}
# git config --global user.name
# git config --global user.email


git clone https://github.com/eugenzio/temp.git
