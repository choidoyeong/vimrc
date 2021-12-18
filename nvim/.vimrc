" vim plug 사용
call plug#begin(has('nvim") ? stdpath('data').'plugged' : '~/.vim/plugged')
" 설치한 플러그인
Plug 'NLKNguyen/papercolor-theme'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" 테마 설정
set t_Co=256

set background=light
colorscheme PaperColor

" tagbar 설정
nmap <F8> :TagbarToggle<CR>

" airline 설정
let g:airline#extensions#tabline#enabled = 1

" 기본 설정
set number
set laststatus=2
syntax enable

