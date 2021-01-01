# setup-mac

setup for developmental environment on macOS as of 2020

## Reference

- [Setup your Mac for development, 2020 edition](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a)
  - information is a bit old

## Prepare for migration

### Zsh

```
~/.zprofile
~/.zshrc
~/.zsh/
```

### Git setting

```
~/.gitconfig
~/.gitignore_global
```

### SSH setting

```
~/.ssh/
```

### iTerm2 Preferences

- [iTerm2 の機能を使いこなして日頃の作業の効率をあげたい 2020](https://stefafafan.hatenablog.com/entry/iterm2)

1. Highlight
   `Preferences` -> `Profiles` -> `Advanced` -> `Triggers` -> `Edit`

   - `(?i)Error`
   - `(?i)Warning`
   - `(?i)Debug`

2. Reuse previous session's directory
   `Preferences` -> `Profiles` -> `General` -> `Working Directory`

### VS Code setting

```
$ code --list-extensions > vscode-ext.txt
```

then prepare for install.sh

```
#!/bin/bash

while read line
do
  # echo `code --uninstall-extension $line`
  echo `code --install-extension $line`
done < vscode-ext.txt
```

### Check brew list

```
$ brew list
```

### Check brew cask list

```
$ brew list --cask
```

#### if applications are not listed, search it

```
$ brew search goland
```

## Maintenance for brew

- Check your system for potential problems

```
$ brew doctor
```

- List installed formulae that are not dependencies of another installed formula. some of formulas could be deleted.

```
$ brew leaves
```
