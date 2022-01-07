scriptencoding utf-8

" .........................................................
" # Plugins
" .........................................................

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'powerline/powerline'
Plug 'arcticicestudio/nord-vim' "Nord theme
Plug 'vim-airline/vim-airline' "status bar can be customized
Plug 'vim-airline/vim-airline-themes' "themes for vim-airline
Plug 'SirVer/ultisnips' "snipets
Plug 'honza/vim-snippets' "snipets
Plug 'junegunn/limelight.vim' "dim all lines except the current one when turned on
Plug 'godlygeek/tabular' " tabular plugin is used to format tables
Plug 'elzr/vim-json' "JSON front matter highlight plugin
Plug 'plasticboy/vim-markdown' "Markdown syntax highlighting
Plug 'vim-pandoc/vim-pandoc' "pandoc integrates Vim/pandoc document converter
Plug 'vim-pandoc/vim-pandoc-syntax' "pandoc (markdown) syntax highlight
Plug 'PotatoesMaster/i3-vim-syntax' 
call plug#end()

" ..........................................................
" # Settings
" ..........................................................

" ## General
"
set title
set mouse=a " It lets you use mous-e on the terminal
set clipboard+=unnamedplus " Keep what you copy on the clip-board
set updatetime=100
set noshowmode  "Airline muestra la barra de estado
set pumblend=0
set hidden "Neovin doesnt complain if a hidden bufer is not saved
" Forbidding you to modify a file which is already open in another process
set noswapfile
"highlight ColorColumn ctermbg=16 " set color for colorcolumn
set colorcolumn=80  " Set & show limit column 
set scrolloff=3  " Display at least 3 lines around you cursor
set diffopt+=vertical  " Always use vertical diffs

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
" number of undo saved
set undolevels=10000
set undoreload=10000

" I disabled the arrow keys to force myself to only use hjkl.
"
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"
" ## Spelling
"
set spelllang=es_es,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u " CTR-L to correct

" ## Lines
"
set wrap  " wrap lines (no display long lines) fo+=t
set number " Show the numbers on the left
set numberwidth=1 " Set numbers width
set relativenumber " It shows the current cursor line
"set textwidth=80 " Set width of text
"set fo+=a " automatic :help fo-table                                    


set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldnestmax=2
set foldlevel=1

" ## Indent to spaces
"
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab " Insertar espacios en lugar de <Tab>s

" ## Search & replace
"
set ignorecase " Ignorar mayúsculas en una búsqueda
set smartcase " No ignorar mayúsculas si la palabra a buscar tiene mayúsculasgg
set gdefault
set inccommand=nosplit " Show replace live preview

" ## Use rg for :grep
"
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m


" ## Theme & Colorscheme
"
"set termguicolors  " Activa true colors en la terminal y quita powerline
"set background=dark " with nord backgorund dark is not readable some commentaries
"https://vim.fandom.com/wiki/Highlight_current_line
"
"" # Nord
colorscheme nord

"
set cursorline " Highlight current line
set cursorcolumn " Highlight current column
hi CursorLine   cterm=bold "ctermbg=16 ctermfg=214 "guibg=gray guifg=white
hi CursorColumn cterm=bold "ctermbg=16 ctermfg=214 "guibg=gray guifg=white

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" typing \c will toggle highlighting on and off
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
" pressing \l will highlight the line that currently contains the cursor.
nnoremap <silent> <Leader>c :execute 'match Search /\%'.virtcol('.').'v/'<CR>
" To highlight the current virtual column (column after tabs are expanded), 
" and have the highlighting stay where it is when the cursor is moved 

"" ## Airline
"
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiettos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_powerline_fonts = 1 " Cargar fuente Powerline y símbolos (ver nota)
"let g:airline_theme= 'icebergDark'
let g:airline_theme='nord'

" ## NerdTree
"
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
map <F2> :NERDTreeToggle<CR

" # Ultisnips
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" For example, if we type link and then press <Tab>, it will be expanded to the following text:
" [Text](http://www.url.com)
"
" The setting UltiSnipsJumpForwardTrigger and UltiSnipsJumpBackTrigger set up the shortcut key 
" to go to next and previous text area of a snippet, making the snippet editing more convenient.

" # Limelight
"
" Limelight [0.0 ~ 1.0] turn on, Limelight! turn off, Limelight!! [0.0 ~ 1.0] Toggle Limelight
" Invoke :Limelight for a visual range
" nmap <Leader>l <Plug>(Limelight)
" xmap <Leader>l <Plug>(Limelight)

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
        
" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

""  Beginning/end of paragraph
""  When there's no empty line between the paragraphs
""  and each paragraph starts with indentation
"  let g:limelight_bop = '^\s'
"  let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1


" # vim-markdown
"
" It helps us to see the structure of the source code more clearly.
" It provides a lot of functionalities such as folding, conceal etc
" Conceal hide the true structure of the sintaxis of markdown
"
" Conceal for me is not good
"
" Shortcuts
"   ]]: go to next header
"   [[: go to previous header
" Command
"   Toc: create a vertical window of table of contents
"   TableFormat: format the table under current cursor

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" # vim-pandoc-syntax
"
" It provides more syntax highlight and better conceal features
" t is designed to work with vim-pandoc. To use it as a standalone plugin, we 
" should add the following settings in our Neovim configuration file:
"
""augroup pandoc_syntax
""    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
"augroup END

" # vim-pandoc
"

let mapleader="\\"

" Call compile
" Open the PDF from /tmp/
function! Preview()
        :call Compile()<CR><CR>
        execute "! zathura /tmp/op.pdf &"
endfunction

" [1] Get the extension of the file
" [2] Apply appropriate compilation command
" [3] Save PDF as /tmp/op.pdf
function! Compile()
        let extension = expand('%:e')
        if extension == "ms"
                execute "! groff -ms % -T pdf > /tmp/op.pdf"
        elseif extension == "tex"
                execute "! pandoc -f latex -t latex % -o /tmp/op.pdf"
        elseif extension == "md"
                execute "! pandoc % -s -o /tmp/op.pdf"
        endif
endfunction

" map \ + p to preview
noremap <leader>p :call Preview()<CR><CR><CR>

" map \ + q to compile
noremap <leader>q :call Compile()<CR><CR>


