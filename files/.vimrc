set nocp

filetype plugin indent on
syntax on

set nu
set tw=100
set cc=101
set formatoptions=croqt
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start


if has('clipboard')
    set clipboard=unnamedplus
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t\+/

highlight DiffText cterm=none ctermbg=28
highlight DiffChange cterm=none ctermbg=28

if exists('$VIM_CLANG_FORMAT')
    let s:clang_format = $VIM_CLANG_FORMAT
else
    let s:clang_format = '/usr/local/share/clang-format.py'
endif

if filereadable(s:clang_format)
    function FormatOnSave()
        let l:formatdiff = 1
        execute 'py3file '. fnameescape(s:clang_format)
    endfunction

    auto BufWritePre *.h,*.cpp,*.c call FormatOnSave()
endif
