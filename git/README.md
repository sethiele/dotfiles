# Changes by Hand

```config
[includeIf "gitdir:~/projects/work/"]
    path = ~/.gitconfig-work
[includeIf "gitdir:~/projects/private/"]
    path = ~/.gitconfig-private
[includeIf "gitdir:~/.dotfiles/"]
    path = ~/.gitconfig-private
```

Create files `.gitconfig-private` & `.gitconfig-work`.
Content:

```config
[user]
    email = $email$
    name = $name$
```
