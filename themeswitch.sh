#!/bin/sh

THEME=$1

if [[ "$THEME" == 0 ]]; then
	# dark
	ln -sf $HOME/.config/helix/themes/catppuccin_mocha_transparent.toml $HOME/.config/helix/themes/catppuccin_dynamic_transparent.toml
else
	# light
  ln -sf $HOME/.config/helix/themes/catppuccin_latte_transparent.toml $HOME/.config/helix/themes/catppuccin_dynamic_transparent.toml
fi

killall -SIGUSR1 hx
