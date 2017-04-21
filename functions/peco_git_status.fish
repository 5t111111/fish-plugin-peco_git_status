function peco_git_status -d "Peco source to select from git status"
    git status --porcelain | peco_wrapper "FILE>" \
      | awk -F ' ' '{print $NF}' | read filename

    if test -n "$filename"
        commandline -i "$filename"
    end
end
