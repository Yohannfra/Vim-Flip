# Vim-Flip
A little vim plugin to toggle booleans or any values

## Installation

### Using Plug

```vim
Plug 'Yohannfra/Vim-Flip'
```

### Manual installation
```
git clone https://github.com/Yohannfra/Vim-Flip ~/.vim/plugin/
```

## Configuration

In you .vimrc create a dictionnary and add the values you want
to be able to toggle

Example:
```vim
let g:vim_flip_dict = {
            \"true" : "false",
            \"True" : "False",
            \ "TRUE": "FALSE",
            \ "0"   : "1"
            \}
```
This example is the default config.\
If it's enough for you, you don't need to add it to your .vimrc.

## Usage

Place you cursor on the word you want to toggle and type
```vim
:Flip
```

or

add a line like this in your .vimrc
```vim
nnoremap <Leader>p :Flip <CR>
```

## License

This project is licensed under the terms of the MIT license.
