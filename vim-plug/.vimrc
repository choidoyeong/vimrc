" vim plug 사용
call plug#begin('~/.vim/plugged')
" 설치한 플러그인
Plug 'NLKNguyen/papercolor-theme'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" 테마 설정
set t_Co=256

set background=light
colorscheme PaperColor

" tagbar 설정
nmap <F8> :TagbarToggle<CR>

" airline 설정
let g:airline#extensions#tabline#enabled = 1

" coc.vim 설정
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 기본 설정
set number
set laststatus=2
syntax enable

