if exists('g:vim_flip_loadded')
    finish
endif

let g:vim_flip_loadded = 1

command! Flip :call flip#Flip()
