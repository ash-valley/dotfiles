#!/usr/bin/env bash
set -x
# shellcheck source=./setup_scripts/common.bash
source "$(dirname "$0")/common.bash"

if [ ! -d "$HOME/.ssh" ]; then
  mkdir -p "$HOME/.ssh"
  chmod 700 "$HOME/.ssh"
fi

mkdir -p \
  "$XDG_CONFIG_HOME" \
  "$XDG_STATE_HOME" \
  "$XDG_DATA_HOME/vim"

ln -sfv "$REPO_DIR/config/"* "$XDG_CONFIG_HOME"
ln -sfv "$XDG_CONFIG_HOME/zsh/.zshenv" "$HOME/.zshenv"
# ln -sfv "$XDG_CONFIG_HOME/editorconfig/.editorconfig" "$HOME/.editorconfig"
# ln -sfnv "$XDG_CONFIG_HOME/vim" "$HOME/.vim"
ln -sfv "$XDG_CONFIG_HOME/commitizen/.czrc" "$HOME/.czrc"
ln -sfv "$XDG_CONFIG_HOME/asdf/.tool-versions" "$HOME/.tool-versions"
