call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'

call plug#end()


autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
map <leader>c :!vimgroffpile %

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
