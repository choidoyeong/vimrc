" Vundle 설치
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Vundle 사용 설정
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle 사용을 위해 필수
Plugin 'VundleVim/Vundle.vim'
" 설치한 플러그인
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

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
