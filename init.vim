
" terminal map
" 退出终端默认使用esc
if exists(':tnoremap')
  tnoremap <Esc> <C-\><C-n>
endif

" vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'prettier/vim-prettier', {'do': 'npm install --production',}

" react jsx
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()


lua require("plugins")
lua require("basic")
lua require("lsp.setup")
lua require("lsp.cmp")

lua require("settings")
lua require("bindings")

syntax on
set background=dark
set number
set autoindent

"inner sentence
set is 

colorscheme gruvbox
