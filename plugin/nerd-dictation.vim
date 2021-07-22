function! g:NDInstall():
    echom "Installing vosk:"
    let ans = input("This will run 'pip3 install vosk' and 'git clone ideasman42/nerd-dictation' plugin folder; proceed? [y/N]: ")
    if ans[0] ==? "y"
        execute "!pip3 install vosk"
        let clonedir = "https://github.com/ideasman42/nerd-dictation.git "
        let plugindir = expand("<sfile>:h")
        execute "!git clone " . clonedir . plugindir
cd nerd-dictation)
    endif
endfunction