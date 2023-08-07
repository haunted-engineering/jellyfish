function iclone
    set remote (gum choose "Github" "Gitlab" "Srchut")
    set repo_info (gum input --placeholder "Enter <user>/<repo>")

    set user (echo $repo_info | cut -d / -f1)
    set repo (echo $repo_info | cut -d / -f2)

    if test -z "$path"
        set path $repo
    end

    switch $remote
        case "Github"
            set url "https://github.com/$user/$repo" 
        case "Gitlab"
            set url "https://gitlab.com/$user/$repo" 
        case "Srchut"
            set url "https://git.sr.ht/~$user/$repo" 
    end

    gum spin --title="Cloning $url to $path..." -- git clone $url $path
end
