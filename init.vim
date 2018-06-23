call plug#begin('~/.nvim/plugged')
"  After updates run :PlugInstall
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " Lazy loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' } " Language loading
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/isRuslan/vim-es6.git'
Plug 'leafgarland/typescript-vim' " Typescript
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/JulesWang/css.vim.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tomlion/vim-solidity.git'
Plug 'othree/yajs.vim' " ES6 syntax highlighting"
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'vim-latex/vim-latex'

" Autocomplete stuff from this article:
" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

call plug#end()
" Then reload .vimrc and :PlugInstall to install plugins.
" Visit https://github.com/junegunn/vim-plug for more information.

" Auto reload this file on change
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Colors
colorscheme slate
set background=light

" Line numbers by default
set number

" Use 2 spaces as tabs
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2 " make backspace work like most other apps

" Allow auto indenting
filetype plugin indent on
syntax enable

" Nerdtree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-g> :NERDTreeToggle<CR>

" Custom delimeter completion
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
let g:surround_33 = "```\r```"

" Trim whitespace on save
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre *.h,*.md,*.sol,*.c,*.java,*.js,*.rb,*.html,*.css,*.scss,*.hbs :call <SID>StripTrailingWhitespaces()

" Share mac system clipboard
set clipboard=unnamed

" Autocompleter default
" as per https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
let g:deoplete#enable_at_startup = 1

" JSDoc highlighting
let g:javascript_plugin_jsdoc = 1


