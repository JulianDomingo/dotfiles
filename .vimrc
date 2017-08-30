execute pathogen#infect()
syntax on
let g:onedark_termcolors=256
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
set background=dark
"colorscheme gruvbox
colorscheme onedark
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
"hi vertsplit ctermfg=238 ctermbg=235
"hi LineNr ctermfg=237
"hi StatusLine ctermfg=235 ctermbg=245
"hi StatusLineNC ctermfg=235 ctermbg=237
"hi Search ctermbg=58 ctermfg=15
"hi Default ctermfg=1
"hi clear SignColumn
"hi SignColumn ctermbg=235
"hi GitGutterAdd ctermbg=235 ctermfg=245
"hi GitGutterChange ctermbg=235 ctermfg=245
"hi GitGutterDelete ctermbg=235 ctermfg=245
"hi GitGutterChangeDelete ctermbg=235 ctermfg=245
"hi EndOfBuffer ctermfg=237 ctermbg=235
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number
set pastetoggle=<p>
set noshowmode
" Trims trailing and leading whitespace.
cmap trim %s/\s\+$//

map <S-j> 10j
map <S-k> 10k
