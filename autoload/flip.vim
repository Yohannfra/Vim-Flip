if !exists('g:vim_flip_dict')
    let g:vim_flip_dict = {
                \"true" : "false",
                \"True" : "False",
                \ "TRUE": "FALSE",
                \ "0"   : "1"
                \}
endif

function! s:FlipWith(new_word)
    echo a:new_word
    let command = "normal ciw" . a:new_word
    execute command
    normal b
endfunction

function! flip#Flip()
    let cword = expand("<cword>")

    for w in keys(g:vim_flip_dict)
        if cword == w
            call s:FlipWith(g:vim_flip_dict[w])
        elseif cword == g:vim_flip_dict[w]
            call s:FlipWith(w)
        endif
    endfor
endfunction
