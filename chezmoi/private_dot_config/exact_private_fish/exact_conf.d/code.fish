function c --wraps code --description 'open current directory in VS Code'
    # by default current directory should be opened in VS Code, but if an argument is passed, open that instead
    if test (count $argv) -gt 0
        code $argv
        return
    end

    code .
end
