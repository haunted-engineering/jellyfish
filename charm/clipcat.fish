function iclipcat
    set FILEPATH (find . -type f | fzf)
    if test -f $FILEPATH
        cat $FILEPATH | xclip -selection clipboard
        echo "Contents of '$FILEPATH' copied to clipboard." | gum format
    else
        echo "File '$FILEPATH' not found." | gum format
    end
end

