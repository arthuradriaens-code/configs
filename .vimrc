call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'

call plug#end()


autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
