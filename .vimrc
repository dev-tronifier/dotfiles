call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'artur-shaik/vim-javacomplete2'
	Plug 'tibabit/vim-templates'
	Plug 'romgrk/doom-one.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ycm-core/YouCompleteMe'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Igorjan94/codeforces.vim'
	Plug 'tomasr/molokai'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
	Plug 'rakr/vim-one'
	Plug 'crucerucalin/peaksea.vim'
	Plug 'tpope/vim-fugitive'
call plug#end()

source $VIMRUNTIME/vimrc_example.vim

"let g:doom_one_terminal_colors = v:true
set encoding=utf-8
let mapleader=" "
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:tmpl_search_paths = ['~/.vim/templates']
"let g:molokai_original = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_solarized_bg='dark'
let g:gruvbox_contrast_dark='high'
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsListSnippets='<c-L>'
let g:UltiSnipsEditSplit='vertical'


"set foldmethod=indent

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
" Replaced by jiangmiao/auto-pairs
"#inoremap " ""<left>
"#inoremap ' ''<left>
"#inoremap ( ()<left>
"#inoremap [ []<left>
"#inoremap { {}<left>
"#inoremap {<CR> {<CR>}<ESC>O
"#inoremap {;<CR> {<CR>};<ESC>O
" inoremap { {}<Left>
" inoremap ( ()<Left>
" inoremap [ []<Left>
au GUIEnter * simalt ~x
set gfn=IBM\ Plex\ Mono\ 14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
set hls
set noswapfile
set splitbelow
set splitright
set wildmenu
set showcmd
set mouse=a
set belloff=all
"set statusline=%<%f%h%m%r%=char=%b=0x%B\ \ %l,%c%V\ %P$
set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L/%P\ TIME:\ %{strftime('%c')}
set is
set cb=unnamed
set ts=8
set sw=8
set si
set foldmethod=marker
set bg=dark
"set background=dark
let g:ycm_use_clangd=1
" inoremap { {}<Left>
" inoremap {<CR> {<CR>}<Esc>O
" inoremap {{ {
" inoremap {} {}
" inoremap <S-Tab> <C-d>

set list listchars=tab:>-,trail:+,eol:$
set list
autocmd vimenter * ++nested colorscheme gruvbox
autocmd filetype cpp nnoremap <F7> :e %:r.cpp<CR>
autocmd filetype cpp nnoremap <F8> :e %:r.in<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 %:r.cpp -g -D ANAND_LOCAL -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r < %:r.in<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
nnoremap <C-o> :NERDTreeToggle<CR>

autocmd filetype java nnoremap <F7> :e %:r.java<CR>
autocmd filetype java nnoremap <F8> :e %:r.in<CR>
autocmd filetype java nnoremap <F9> :w <bar> !javac %:r.java<CR>
autocmd filetype java nnoremap <F10> :!java %:r < %:r.in<CR>
autocmd filetype java nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
autocmd filetype java nnoremap <C-o> :NERDTree<CR>
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:airline_theme='one'

let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_tranparent = 0
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
