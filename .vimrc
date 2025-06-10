set number
syntax on
set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" ====== Plug manager starts here ======
call plug#begin()

" Add your plugins here, for example:
Plug 'preservim/NERDTree' " NERDTree for file Browse
Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fzf fuzzy finder, for advanced search
Plug 'airblade/vim-rooter' " Changes Vim's working directory to the project root
Plug 'vim-airline/vim-airline' " Statusline and tabline for Vim
Plug 'ryanoasis/vim-devicons' " Adds file type icons (requires airline/nerdtree)

" The `hardmode` plugin is mentioned in your image, if you want it:
Plug 'wikitopian/hardmode' " Hardmode plugin (if you need it)

" More plugins...
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" ====== Plug manager ends here ======" 
