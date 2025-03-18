# My dotfiles
... and random mess of useful things


## Using a specific git AND gitub user in every git repo inside a certain folder

```sh
# ~/.gitconfig

# for personal git (mostly config files)
[includeIf "gitdir:~/proj/personal/**"]
    path = ~/proj/personal/.gitconfig
```

```sh 
# ~/proj/personal/.gitconfig
[user]
    name = Karlish
    email = 52657221+Karlish-git@users.noreply.github.com

[url "https://Karlish-git@github.com/"]
    insteadOf = https://github.com/
```
