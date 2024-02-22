#!/usr/bin/env bash

# Reset
RST=$(tput sgr0)

# Style
BLD=$(tput bold)

#Colors
RED=$(tput setaf 1)
GRN=$(tput setaf 2)
BLU=$(tput setaf 4)

function print-attr {
    printf $1; shift
    printf "$@"
    printf ${RST}
}

function print-bold {
    print-attr ${BLD} "$@"
}

function print-red {
    print-attr ${RED} "$@"
}

function print-blue {
    print-attr ${BLU} "$@"
}

function print-green {
    print-attr ${GRN} "$@"
}

function print-bred {
    print-bold "$(print-red "$@")"
}

function print-bgreen {
    print-bold "$(print-green "$@")"
}

function print-bblue {
    print-bold "$(print-blue "$@")"
}

