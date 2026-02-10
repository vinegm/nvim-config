# Neovim Configuration

These are my day-to-day Neovim configs.

> Ramble: "You already had nvim in your `.dotfiles` repo, why this one?", more often than not I just wanted to clone the nvim configs, and having everything in a single repo was a hassle.

## Usage

To use these configs you can either symlink them into `~/.config/nvim` or clone them there.

```sh
# clone elsewhere and symlink:
git clone https://github.com/vinegm/nvim-config.git
ln -s /path/to/repo ~/.config/nvim
```

```sh
# clone directly into the config directory:
git clone https://github.com/vinegm/nvim-config.git ~/.config/nvim
```

> Note: Be careful if you already have a config — make a backup first.

This setup uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the package manager. Open the lazy UI with `<leader>ln` to view and manage plugins.

I would recommend reading the entire config before using, so you are able to get familiar with the keymaps, binds and autocommands.

## Customization

I try to keep the configs somewhat modularized and organized, this is the structure I try to follow:

- Bootstraping: `lua/config/lazy.lua`
- General options: `lua/config/opts.lua`
- Keybindings: `lua/config/keymaps.lua`
- Autocommands: `lua/config/autocommands.lua`
- Plugins: `lua/plugins/*`
