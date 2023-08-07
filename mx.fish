function mx
    set FUNCS (basename -a $HOME/.config/fish/functions/*)
    set CHOICE (printf '%s\n' $FUNCS | gum choose)
    if [ -n "$CHOICE" ]
        set FUNC_NAME (string replace -r '.fish$' '' -- $CHOICE)
        if [ "$argv[1]" = "-e" ]
            funced $FUNC_NAME
        else
            $FUNC_NAME
        end
    end
end
