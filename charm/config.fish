function open-config
    set choice (gum choose "nvim" "awesome" "picom" "tmux")
    set path $HOME/.config/$choice
    $EDITOR $path
end

function cd-config
    set choice (gum choose "nvim" "awesome" "picom" "tmux")
    set path $HOME/.config/$choice
    cd $path
end
