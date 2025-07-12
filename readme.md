# A Minimalistic & Functional NeoVim Config
A super-simple NeoVim config geared toward fast navigation, powerful LSP support, and a clean UI.
Includes some niceties and creature-comforts (especially handy when switching over from another text editor). This config mostly focuses on productivity and efficiency, which allows you to only think about _actually programming_!
_Features:_

- 4 Already-Installed Colorschemes (Rose-Pine, Melange, Nordic, Vague)
    _^ just un-comment the one you like most!_
- Many Key Remaps for Convenience (Each remap is explained in (remap.lua)[https://github.com/originaluncompiled/nvim-config/blob/main/lua/remap.lua])
- The ability to say _"I use NeoVim btw ;)"_ and not regret it

_Plugins:_

- Auto-Comment (Ctrl+/ to Comment/Uncomment the Selection)
- Fuzzy Find (Easier to Navigate to Files)
- NeoTree (Toggleable File Explorer)
- UndoTree (Easily Browse/Switch Between Undo Branches)
- TreeSitter (Better Syntax Highlighting)
- Completions, Git (via Fugitive & GitSigns), and LSP Support

## Requirements:
_Install using your normal terminal-of-choice_

```bash
    build-essential ripgrep git fd-find
```

_Required for the LSPs:_

```bash
    nodejs npm python3 python3-pip
```

- Also requires a [_Nerd Font_](https://www.nerdfonts.com/) for icons in _Neotree_
- Made with NVim v0.11.2

## To Install:

1. Clone this repo into your _~/.config_ folder/directory
2. Ensure it's named _'nvim'_
3. Launch into neovim and _viola!_
