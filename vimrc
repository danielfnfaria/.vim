execute pathogen#infect()

" required
filetype off
filetype plugin on
filetype indent on

set backspace=indent,eol,start 	" backspace key more powerful
set noerrorbells								" no crazy beeps 
set showcmd											" show me what im typing
set showmode										" show current mode
set noswapfile									" dont write swapfile
set nobackup										" dont create any backup file
set	nowritebackup								

set splitright									" split right to the current window
set splitbelow									" split below to the current window

set laststatus=2								" always set status line
set hidden											" hide file instead close if open another file

set ruler												" show cursor position all the time
set incsearch										" show realtime matching by flickering
set hlsearch										" highline found searches
set ignorecase
set smartcase
set nocompatible
set autoindent
set smartindent
set tabstop=2
set	noexpandtab
set number

if has('mouse')
 set mouse=a
endif

" filetype settings
autocmd BufNewFile,BufRead *.vim 				setlocal noet 			ts=2 sw=2 sts=2
autocmd BufNewFile,BufRead *.sh 				setlocal noet 			ts=2 sw=2 sts=2
autocmd BufNewFile,BufRead *.py 				setlocal noet 			ts=2 sw=2 sts=2
autocmd BufNewFile,BufRead *.yml,*.yaml setlocal spell noet ts=2 sw=2
autocmd BufNewFile,BufRead *.json				setlocal expandtab 	ts=2 sw=2

" plugins settings
"

" dracula theme
syntax enable
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

" terraform
let g:terraform_fold_sections=0

" gitgutter
set updatetime=100

" deoplete config
let g:deoplete#enable_at_startup=1
let g:deoplete#disable_auto_complete=1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
set completeopt-=preview "disable autocomplete descriptions

" golang
let g:go_term_enabled = 1
autocmd FileType go call deoplete#custom#buffer_option('auto_complete', v:true)


" nerdtree
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" better-whitespace
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" git fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gc :Gcommit<CR>

" vim:ts=2:sw=2:et
