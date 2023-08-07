function clone

    if [ "$argv[1]" = "-i" -o "$argv[1]" = "--interactive" ]
        iclone
    else
        if [ (count $argv) -eq 0 ]
            echo "Usage: clone <name>/<repo> [<path>]"
            return 1
        end

        set user (echo $argv[1] | cut -d / -f1)
        set repo (echo $argv[1] | cut -d / -f2)

        if [ (count $argv) -eq 2 ]
            set path $argv[2]
        else
            set path $repo
        end

        set url "https://github.com/$user/$repo"

        gum spin --title="Cloning $url to $path..." -- git clone $url $path
    end
end
