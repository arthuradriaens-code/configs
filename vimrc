call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeFocus<CR>

Plug 'jiangmiao/auto-pairs'

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk = {
	\ 'options': [
	\ '-pdf',
	\ '-shell-escape',
	\ '-verbose',
	\ '-file-line-error',
	\ '-synctex=1',
	\ '-interaction=nonstopmode',
	\ ],
	\}
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
call plug#end()
