#!/usr/bin/env bash

if [[ -e "$HOME/.config/systemd/user/t1bootrandomizer.service" ]]; then
  echo ":: Removing the boot service"
  systemctl --user disable t1bootrandomizer.service
  rm "$HOME/.config/systemd/user/t1bootrandomizer.service"
fi


if [[ -e "$HOME/homebrew/t1bootrandomizer" ]]; then
  echo ":: Deleting the t1bootrandomizer directory"
  rm -rf "$HOME/homebrew/t1bootrandomizer"
fi

