function clipcat
    if [ "$argv[1]" = "-i" -o "$argv[1]" = "--interactive" ]
        iclone
    else
    end
    if test -f $argv
        cat $argv | xclip -selection clipboard
        echo "Contents of '$argv' copied to clipboard."
    else
        echo "File '$argv' not found."
    end
end
