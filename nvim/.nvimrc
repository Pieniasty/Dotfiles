" vim:fdm=marker
" Plugins (Vundle) {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-tbone'
Plugin 'sjl/gundo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'sudar/vim-arduino-syntax'
" Plugin 'jooize/vim-colemak'

call vundle#end()
filetype plugin indent on
" }}}
" Settings {{{
let mapleader = ","
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set smartindent

set nobackup
set nowritebackup
set noswapfile
set noshowmode

set hidden
set autoread

set list
set shiftround
set linebreak

set display+=lastline
set wildmode=longest,list,full
set wildignorecase

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault

set virtualedit+=block

set splitbelow
set splitright

set mouse=a
" }}}
" Random mappings {{{
" nnoremap ; :
" vnoremap ; :

nnoremap j gj
nnoremap k gk

noremap <Up> gk
noremap <Down> gj
noremap <Left> h
noremap <Right> l

inoremap <C-v> <Esc>"+pi

nnoremap q: <Nop>

nnoremap <space> za
vnoremap <space> zf
" }}}
" Leader mappings {{{
nnoremap <leader><leader> <c-^>

imap <leader>. <Esc>
vnoremap <leader>. <Esc>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :bd<CR>
nnoremap <leader>h :nohl<CR>

noremap <leader>v <C-w>v
noremap <leader>s <C-w>s

nnoremap <leader>rv :e ~/.nvimrc<CR>
nnoremap <leader>rt :e ~/.tmux.conf<CR>
nnoremap <leader>rz :e ~/.zshrc<CR>
"}}}
" Autocommands {{{
au! bufwritepost ~/.nvimrc nested source ~/.nvimrc
au FileType python setlocal completeopt-=preview

augroup RemoveFugitiveMappingForColemak
    autocmd!
    autocmd BufEnter * silent! execute "nunmap <buffer> <silent> y<C-G>"
augroup END
" }}}
" Plugin settings {{{
" let g:loaded_matchparen=1
" Jedi
let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = "2"
" }}}
" Lightline {{{
let g:lightline = {
        \ 'colorscheme': 'powerline',
        \ 'mode_map': { 'c': 'NORMAL' },
        \ 'component_function': {
        \   'modified': 'LightLineModified',
        \   'readonly': 'LightLineReadonly',
        \   'filename': 'LightLineFilename',
        \   'fileformat': 'LightLineFileformat',
        \   'filetype': 'LightLineFiletype',
        \   'fileencoding': 'LightLineFileencoding',
        \ },
        \ 'component_visible_condition': {
        \   'readonly': '(&filetype!="help"&& &readonly)',
        \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
        \ },
        \ }

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
        \  &ft == 'unite' ? unite#get_status_string() : 
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

" }}}
" Color Scheme {{{
let base16colorspace=256
colorscheme base16-default
set background=dark
" }}}
