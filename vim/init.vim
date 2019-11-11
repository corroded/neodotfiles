call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'iCyMind/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'skwp/vim-spec-finder'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" mostly from https://github.com/skwp/dotfiles/blob/50767f29218ffcd19521d543c5a06820fb78101d/vim/settings/yadr-keymap.vim
" ==== NERD tree
" Open the project tree and expose current file in the nerdtree with Ctrl-\
" " calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTreeToggle
  endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Move between split windows by using the four directions H, L, K, J
" NOTE: This has moved to vim/settings/vim-tmux-navigator.vim.
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" From https://github.com/junegunn/fzf.vim
"   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Rg  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Rg! - Start fzf in fullscreen and display the preview window above
" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

set number

colorscheme NeoSolarized

set clipboard+=unnamedplus
