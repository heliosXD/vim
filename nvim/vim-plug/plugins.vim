 ## General
 set number      # Show line numbers
 set linebreak   # Break lines at word (requires Wrap lines)
 set showbreak=+++       # Wrap-broken line prefix
 set textwidth=100       # Line wrap (number of cols)
 syntax enable
 set hlsearch    # Highlight all search results
 set smartcase   # Enable smart-case search
 set ignorecase  # Always case-insensitive
 set incsearch   # Searches for strings incrementally
 set autoindent  # Auto-indent new lines
 set shiftwidth=4        # Number of auto-indent spaces
 set smartindent # Enable smart-indent
 set smarttab    # Enable smart-tabs
 set softtabstop=4       # Number of spaces per Tab 
 filetype plugin indent on
 set tabstop=4
 set shiftwidth=4
 set expandtab
 call plug#begin()
Plug 'xolox/vim-notes' 
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'trevordmiller/nova-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'honza/vim-snippets'
Plug 'briancollins/vim-jst'
Plug 'yggdroot/indentline'
Plug 'townk/vim-autoclose'
Plug 'jiangmiao/auto-pairs'
call plug#end()
 inoremap<C-Return> <CR><Esc>0
 nmap <silent> <C-M> :NERDTreeToggle<CR>
 nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors


inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ?
      \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    let g:coc_snippet_next = '<tab>'

:let g:notes_suffix = '.txt'
