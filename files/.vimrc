filetype plugin indent on
syntax on
set nu
set tw=100
set cc=101
set formatoptions=croqt
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set clipboard=unnamed
set nocp

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t\+/

highlight DiffText cterm=none ctermbg=28
highlight DiffChange cterm=none ctermbg=28

function FormatOnSave()
    let l:formatdiff = 1
    py3f /usr/local/share/clang-format.py
endfunction

auto BufWritePre *.h,*.cpp,*.c call FormatOnSave()
