#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
echo "HOME: $HOME"
check "pre-commit" [ "$(command -v pre-commit | grep /opt/pip/bin/pre-commit)" ]

# TODO: It seems that `customizations.vscode.settings` is not currently processed.
# check "~/dotfiles/install.sh" test -x $HOME/dotfiles/install.sh
# check "~/.gitconfig" test -r $HOME/.gitconfig
# check "~/.config/starship.toml" test -r $HOME/.config/starship.toml
# check "/etc/bash_completion.d/99-starship.sh" test -x /etc/bash_completion.d/99-starship.sh

# Report result
reportResults
