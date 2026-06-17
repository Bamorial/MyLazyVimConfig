# MyLazyVimConfig

My Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Install

Clone this repo directly into the Neovim config location:

```bash
git clone https://github.com/Bamorial/MyLazyVimConfig.git ~/.config/nvim
```

One-liner that ensures `~/.config` exists first:

```bash
mkdir -p ~/.config && git clone https://github.com/Bamorial/MyLazyVimConfig.git ~/.config/nvim
```

If `~/.config/nvim` already exists, back it up first and then clone:

```bash
mv ~/.config/nvim ~/.config/nvim.bak && git clone https://github.com/Bamorial/MyLazyVimConfig.git ~/.config/nvim
```

## Notes

- This config includes `lazy-lock.json` so plugin versions stay in sync across devices.
- LazyVim installation docs: https://lazyvim.github.io/installation
