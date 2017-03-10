Welcome To My  Dotfiles
=======================

### Setup Description

* Bar: ``` lemonbar ```
* Browser: ``` qutebrowser ```
* Compositor: ``` compton ```
* File Manager: ``` ranger ```
* Font: ``` tewi ```
* Program launcher: ``` rofi ```
* PDF viewer: ``` zathura ```
* Text editor: ``` vim ```
* Terminal emulator: ``` urxvt patched ```
* Window manager: ``` i3-gaps ```

<!-- ### Directory Description -->

<!-- | Directory          |     Description                                   | -->
<!-- | ---------          | :-----------------------------------------------: | -->
<!-- | [bash]             | contains Xresources and bashrc files              | -->
<!-- | [colors/.colors]   | all my Xresources colorschemes can be found here  | -->
<!-- | [compton]          | compton.conf config file                          | -->
<!-- | [config]           | contains .config files e.g i3,mpd,dunst,ncmpcpp   | -->
<!-- | [homepage/homepage]| my custom startpage                               | -->
<!-- | [local/.local]     | contains my all my scripts                        | -->
<!-- | [newsbeuter/.newsbeuter] | urls and config files for newsbeuter        | -->
<!-- | [themes/.themes/mywood] | modified gtk theme based on murrine          | -->
<!-- | [tmux]             | tmux.conf file                                    | -->
<!-- | [vim]              | contains my custom vim colorsheme and vimrc       | -->
<!-- | [weechat/.weechat] | weechat.conf file                                 | -->
<!-- -->

### Installation
Lately I've been using [GNU stow] to manage my dotfiles. If interested with any
of my configs you can simply use stow to install.

1. Clone this repo.
   *  ``` git clone https://github.com/mohabaks/dotfiles ```
2. Change directory to dotfiles
   * ``` cd dotfiles ```
3. Install using stow
```bash
   # Install tmux config
   stow tmux

   # Only for files in config directory
   # you will need to change directory to that
   # example to install zathura config 
   cd config

   # Install zathura config
   stow zathura

   # Unstow zathura config
   stow -D zathura
```

# Screenshots

##### Current
![Solarized](http://imgur.com/WDAQc8v.png)


##### Previous

![Gruvbox colors](http://imgur.com/4Nm1vjQ.png)


[GNU stow]: https://www.gnu.org/s/stow/manual/stow.html
[bash]: https://github.com/mohabaks/dotfiles/tree/master/bash
[colors/.colors]: https://github.com/mohabaks/dotfiles/tree/master/colors/.colors
[compton]: https://github.com/mohabaks/dotfiles/tree/master/compton
[config]: https://github.com/mohabaks/dotfiles/tree/master/config
[homepage/homepage]: https://github.com/mohabaks/dotfiles/tree/master/homepage/homepage
[local/.local]: https://github.com/mohabaks/dotfiles/tree/master/local/.local
[newsbeuter/.newsbeuter]: https://github.com/mohabaks/dotfiles/tree/master/newsbeuter/.newsbeuter
[themes/.themes/mywood]: https://github.com/mohabaks/dotfiles/tree/master/themes/.themes/mywood
[tmux]: https://github.com/mohabaks/dotfiles/tree/master/tmux
[vim]: https://github.com/mohabaks/dotfiles/tree/master/vim
[weechat/.weechat]: https://github.com/mohabaks/dotfiles/tree/master/weechat/.weechat
