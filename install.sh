#!/usr/bin/env bash

# Create required directories
echo ":: Creating required directories"
mkdir -p "$HOME/homebrew"
mkdir -p "$HOME/.config/systemd/user"

# Clone the startup animations repository
if [[ ! -d "$HOME/homebrew/t1bootrandomizer" ]]; then
  echo ":: Installing to $HOME/homebrew/t1bootrandomizer"
  git clone https://github.com/T1Software/t1bootrandomizer "$HOME/homebrew/t1bootrandomizer"
  cd "$HOME/homebrew/t1bootrandomizer"
else
  echo ":: Updating $HOME/homebrew/t1bootrandomizer"
  cd "$HOME/homebrew/t1bootrandomizer"
  git pull
fi

# Install the service file
echo ":: Installing the startup service"
ln -sf "$HOME/homebrew/t1bootrandomizer/t1bootrandomizer.service" "$HOME/.config/systemd/user/t1bootrandomizer.service"
systemctl --user daemon-reload
systemctl --user enable --now t1bootrandomizer.service

