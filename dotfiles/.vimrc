
let mapleader =" "
" Load Pathogen for plugins:
"	execute pathogen#infect()
"	execute pathogen#helptags()

" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
    set background=dark
    set termguicolors
    set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25,r-cr-o:block
    set cursorline
    let g:gruvbox_italic=1
    let g:airline_theme='bubblegum'
    let g:airline#extensions#tabline#enabled = 1
    colorscheme gruvbox
"	set encoding=utf-8
	set number

"   airline
    let g:airline_left_sep=''
    let g:airline_right_sep=''
    let g:airline_inactive_collapse=1

" indentation
	filetype plugin indent on
	set tabstop=4
	set shiftwidth=4
	set expandtab

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow
	set splitright

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Open the selected text in a split (i.e. should be a file).
	map <leader>o "oyaW:sp <C-R>o<CR>
	xnoremap <leader>o "oy<esc>:sp <C-R>o<CR>
	vnoremap <leader>o "oy<esc>:sp <C-R>o<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Open corresponding.pdf
	map <leader>p :!mupdf <c-r>%<backspace><backspace><backspace>pdf &<CR><CR>

" Compile document
	map <leader>c :!compiler <c-r>%<CR>

" Interpret .md files, etc. as .markdown
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Make calcurse notes markdown compatible:
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

" Spell-check set to F2:
	map <F2> :setlocal spell! spelllang=en_us,es,ru<CR>

" Use urlview to choose and open a url:
	:noremap <leader>u :w<Home>silent <End> !urlview<CR>

" Copy selected text to system clipboard (requires gvim installed):
	vnoremap <C-c> "*y :let @+=@*<CR>

" Copy and paste to clipboard
	vmap <F3> "+y
	map <F4> "+p

" Enable Goyo by default for mutt writting
	" Goyo's width will be the line limit in mutt.
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=72
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo

" Enable autocompletion:
	set wildmode=longest,list,full
	set wildmenu
    imap <tab> <C-N>

" Automatically deletes all tralling whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost ~/.scripts/folders,~/.scripts/configs !bash ~/.scripts/shortcuts.sh

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Join line with ctrl
    nnoremap <M-j> J

" Easier tab navigation (similar to qutebrowser)
    nnoremap J :tabn<cr>
    nnoremap K :tabp<cr>

" C-T for new tab
	nnoremap <C-t> :tabe<Space>

" Navigating with guides
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l
	inoremap ;gui <++>

" For normal mode when in terminals (in X I have caps mapped to esc, this replaces it when I don't have X)
	inoremap jw <Esc>
	inoremap wj <Esc>

" latex pdf viewer
    let g:livepreview_previewer = 'zathura'

" To avoid switching between keyboards
    set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" neomake
    let g:neomake_javascript_enabled_makers = ['eslint']
    let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
    call neomake#configure#automake('w')
