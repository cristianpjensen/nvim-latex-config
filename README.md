# Cristian's NeoVim config

This config is mainly intended for editing $\LaTeX$ files (on macOS, but also
works on Linux). It is not meant to be an IDE, but rather a fast editor.

This config has the following features (these are mainly due to
[Elijan Mastnak's supercharged mathematical typesetting article](https://www.ejmastnak.com/tutorials/vim-latex/intro/)),
 - [LuaSnip](https://github.com/L3MON4D3/LuaSnip) snippets for making LaTeX
   typesetting fast;
 - Compilation of LaTeX files within the editor, using
   [VimTeX](https://github.com/lervag/vimtex);
 - Inverse search from PDF document to editor, using
   [Skim](https://skim-app.sourceforge.io/) (see
   [Elijan Mastnak's article](https://www.ejmastnak.com/tutorials/vim-latex/pdf-reader/#skim));
 - LaTeX auto-formatting on save, using
   [latexindent](https://github.com/cmhughes/latexindent.pl);
 - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) instead of
   VimTeX's highlighting, because it is way faster;
 - [Automatic colorscheme switching](https://github.com/f-person/auto-dark-mode.nvim)
   on macOS;
 - Finding files and grep within the editor, using
   [Telescope](https://github.com/nvim-telescope/telescope.nvim);
 - Fast file switching with [Harpoon](https://github.com/ThePrimeagen/harpoon);
 - And more.
