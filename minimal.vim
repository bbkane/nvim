" Add settings that might be overridden by plugins


" Open the following link by placing your cursor over it in
" normal mode and type 'gx' (without quotes)
" Load plugins (https://github.com/junegunn/vim-plug).
" https://github.com/junegunn/vim-plug
if executable('git') && !empty(glob("~/.vim/autoload/plug.vim"))
    " look for plugins in bundle/
    call plug#begin('~/.vim/bundle')

    " Add Plugins here!

    " get some good default settings
    Plug 'tpope/vim-sensible'


    " End plugins
    call plug#end()
else
    autocmd VimEnter * echom "Install vim-plug with command :InstallVimPlug"
endif


" Add settings that might overwrite plugins


" Just leave this at the bottom to auto-install vim-plug
function! InstallVimPlug()
    if empty(glob("~/.config/nvim/autoload/plug.vim"))
        if executable('curl')
            let plugpath = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
            silent exec "!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs " . plugpath
            redraw!
            echom "Now restart the editor"
        else
            echom "Install curl"
        endif
    else
        echom "vim-plug installed!"
    endif
endfunction
command! InstallVimPlug call InstallVimPlug()

