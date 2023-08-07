function defun
    set FUNC_NAME (gum input --placeholder "Func name")
    set FUNC_BODY (gum write --placeholder "Func body (CTRL+D to finish)")

    set FUNC_FILE "$HOME/.config/fish/functions/$FUNC_NAME.fish"

    echo "function $FUNC_NAME" > $FUNC_FILE
    echo "$FUNC_BODY" >> $FUNC_FILE
    echo "end" >> $FUNC_FILE

    if gum confirm "Do you want to edit the function?"
        funced $FUNC_NAME
    end
end
