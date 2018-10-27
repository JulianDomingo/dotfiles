" Plugins using vim-plug vim package manager.

call plug#begin('$HOME/.config/nvim/bundle')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'

call plug#end()
syntax on

" Enable NERDTree on nvim startup.
autocmd vimenter * NERDTree

let g:deoplete#enable_at_startup = 1
let g:airline_theme='onedark'

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
colorscheme onedark

" Idk what this is lol
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235
" End of not knowing what this is

" Linux Kernel Coding Style
set colorcolumn=81
highlight ColorColumn ctermbg=Black ctermfg=DarkRed
filetype plugin indent on
" show existing tab with 4 spaces width
"set tabstop=8

"set shiftwidth=8
" Should actually be 8.
"set tabstop=4
"set shiftwidth=4
"set expandtab

"set tabstop=8
"set shiftwidth=8
":autocmd FileType py execute  ':silent! %s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
" when indenting with '>', use 4 spaces width
"set shiftwidth=8
" On pressing tab, insert 4 spaces
"set expandtab
set number
set pastetoggle=<p>
set noshowmode
set mouse=a

" View whitespace
"nnoremap    <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
nnoremap    <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
" Trims trailing and leading whitespace.
cmap trim %s/\s\+$//

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

map <S-j> 10j
map <S-k> 10k

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Close nerdtree and vim simultaneously.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Non-python file
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Python
"autocmd BufNewFile,BufRead *.py let g:python_recommended_style=0
"autocmd BufNewFile,BufRead *.py set tags=tags;/
"autocmd BufNewFile,BufRead *.py set noet
"autocmd BufNewFile,BufRead *.py set tabstop=4
"autocmd BufNewFile,BufRead *.py set shiftwidth=4
"autocmd BufNewFile,BufRead *.py retab!

"set number
"set smartindent
