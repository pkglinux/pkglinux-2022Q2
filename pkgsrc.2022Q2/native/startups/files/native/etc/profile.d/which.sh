# Initialization scripts for bash and sh

alias which='_() { alias "$@" 2>/dev/null || type -pa "$@" | head -n 1 ; return ${PIPESTATUS[0]}; unset -f _; }; _'
