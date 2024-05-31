# my dotfiles

dotfiles for my arch system

## what you need

you need the yay aur helper which you can install it with the following command

```
$ pacman -Sy --needed git base-devel
$ git clone https:aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
```

then you need to install the following packages
git, stow, tree, fastfetch, firefox, hyprland, kitty, i3, rofi, waybar, dunst, flameshot

you can install all these packages with the following command

```
$ yay -S git stow tree fastfetch firefox hyprland i3 rofi kitty waybar dunst flameshot
```

after that you will want to cd into the dotfiels directory

```
$ cd dotfiles-arch
```

then you will want to stow the files

```
$ stow --adopt .
```

now you can use my dotfiles for arch

### I use arch btw
