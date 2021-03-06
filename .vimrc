" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Set vim to nowrap, and set options to prevent wrapping
set nowrap
set textwidth=0
set wrapmargin=0

" Set the indent width to 2 for personal preference
set shiftwidth=2
set tabstop=22

" Personal status line settings, mostly testing for now
" Taken from an example on the internet
" Will personalize later
set laststatus=2
set statusline=
set statusline+=%<					" Cut at the start
set statusline+=%2*[%n%H%M%R%W]%*	" Flags and buf num
set statusline+=%-40f				" Path
set statusline+=%=%1*%y%*%*			" File type
set statusline+=%10((%l,%c)%)		" Line and Column
set statusline+=%P					" Percentage

" Set the comments to not auto insert comments on new line
set formatoptions-=cro

" Mapping F7 and F8 keys to switch between tabs
map <F7> :tabp<CR>
map <F8> :tabn<CR>

" Setting the default color scheme
colorscheme ir_black

" Show the color column at start up
set colorcolumn=81

" Set text wrapping to occur at 80 characters
set tw=80
