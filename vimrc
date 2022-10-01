syntax on
filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si
set rnu

autocmd BufNewFile,BufRead *.md set filetype=markdown

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'
nnoremap <C-n> :NERDTreeFocus<CR>
let NERDTreeQuitOnOpen=1

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/vim-markdown'

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
let g:vimtex_view_method = 'zathura'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
:set bg=dark
autocmd VimEnter * hi Normal ctermbg=none

" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1
