# t1bootrandomizer (Inspired by [kageurufu](https://github.com/kageurufu/steamdeck_startup_animations))

Randomizer for the Startup Animation of the Steamdeck (Newest PreRelease Patch)

# Installation

```sh
curl -o - https://raw.githubusercontent.com/T1Software/t1bootrandomizer/main/install.sh | bash -
```

If you're (justifiably) not a fan of `curl | bash`, you can run this:

```sh
mkdir -p "$HOME/homebrew"
mkdir -p "$HOME/.config/systemd/user"
git clone https://github.com/T1Software/t1bootrandomizer "$HOME/homebrew/t1bootrandomizer"
ln -sf "$HOME/homebrew/t1bootrandomizer/t1bootrandomizer.service" "$HOME/.config/systemd/user/t1bootrandomizer.service"
systemctl --user daemon-reload
systemctl --user enable --now t1bootrandomizer.service
```
# Startup Animation Videos

Drop your .webm Files into "/home/deck/homebrew/t1bootrandomizer/".

# Uninstallation

```sh
bash $HOME/homebrew/t1bootrandomizer/uninstall.sh
```
