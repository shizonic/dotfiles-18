Dotfiles
========
----

## Table of Contents

- [Dotfiles](#)
	- [Description](#description)
    - [List of Applications I use](#apps)
	- [Screenshots](#screenshots)
	- [Inspiration and special thanks](#inspiration-and-special-thanks)
	
<a name="description"></a>	
## Description

For better or worse, there's no one "Linux". Instead, there are tons of 
Linux distributions that all run the Linux kernel.However, they all offer
different features and having used various distro before I decided to try
something different this time that I'll stick to and follows the **KISS** 
principle(Keep It Simple, Stupid).Therefore I ended up using [Arch Linux] 
and [i3wm] as my window manager.

To cut the story short this dotfiles contains some of the configuration
files and list of applications I use that suits my preferences.

| Directory     | Description   |
| ------------- |:-------------:|
| [.colors]     | right-aligned |
| [.conky]      | centered      |
| [.fonts] | are neat      |
| [.i3 ] |      |
| [.icons] |  |
| [.ncmpcpp] | |
| [.themes ]  |  |
| [.weechat]  |  |
| [Homepage]  |  |
| [images]  |  |
| [luakit]  |  |
| [ranger]  |  |
| [scripts] |   |
| [zathura] |   |
<a name="apps"></a>	
## List of Applications I use

Most of applications I use are console based following [the Arch Way]
principles.

- **Internet**
     - **Network manager**
           - [NetworkManager] manager that provides wired, wireless, 
           mobile broadband and OpenVPN detection with configuration.
     - **Web browsers**
           - [Firefox] and [Vimperator] provide a vim keybinding 
           functionality.
           - [Luakit] Highly configurable, micro-browser framework 
           based on the WebKit engine and the GTK+ toolkit.
           though currently not supported but it works just fine.
           - [qutebrowser] I have recently found this am my 
           replacement for [Luakit]
     - **FTP client**
           - [FileZilla] Fast and relaible FTP, FTPS and SFTP client.
     - **FTP server**
           - [proFTPd] Asecure and configurable FTP server
     - **BitTorrent clients**
           - [rTorrent] Simple and lightweight ncurses BitTorrent client.
     - **Video downloader**
           - [mps-youtube] This project is based on mps, a terminal 
           based program to search, stream and download music,video.
     - **Communication**
           - **Email client**
               - [Mutt] Small but very powerful text-based mail client.
           - **IRC client**
               - [Weechat] Modular, lightweight ncurses-based IRC client.
     - **News, RSS, and blogs**
           - **News aggregator**
               - [Newsbeuter] Ncurses RSS aggregator with layout 
                and keybinding similar to the [Mutt] email client.
               - [RTV] provides an interface to view and interact with 
               reddit from your terminal.
           - **Podcast client**
               - [gPodder] A podcast client and feed aggregator 
               (GTK+ and CLI interface).
           - **Blog software**
               - [Pellican] A static site generator, powered by Python.
     - **Microbloging client**
           - [Rainbow Stream] A smart and nice Twitter client on terminal 
           written in Python

- **Multimedia**
     - **Image viewer**
          - [feh] Fast, lightweight image viewer that uses imlib2.
     - **Raster editor**
          - [GIMP] Image editing suite in the vein of proprietary editors 
          such as Adobe Photoshop. 
     - **Vector graphics - illustration**
          - [Inkscape] Vector graphics editor, with capabilities similar
          to Illustrator, CorelDraw, or Xara X, using the SVG (Scalable
           Vector Graphics) file format.
     - **3D modeling/rendering**
          - [Blender]  fully integrated 3D graphics creation suite 
          capable of 3D modeling, texturing, and animation, among other things.  
     - **Music player**
          - [mpd] and **ncmpcpp** 
          - **mpc** I use it control my music from terminal such as 
          pause, random, play etc.
          - **cava** as my music visualizer.
     - **Video player**
          - [mpv] Movie player based on MPLayer and mplayer2.
     - **Video editor**
          - [FFmpeg] Complete, cross-platform solution to record, convert 
          and stream audio and video.
          - [Open Shot] Non-linear video editor based on MLT framework.
     - **Screencast**
          - [RecordMyDesktop]  An easy to use utility that records your 
          desktop into the ogg format with a CLI, Qt or GTK+ interface.

- **Utilities**
     - **Mount tools**
          - [cryptmount] Mount an encrypted file system as a regular 
          user.
     - **Udisks**
          - *udiskie* Automatic disk mounting service using udisks
     - **Terminal emulator**
          - [urxvt] Highly extendable (with Perl) unicode enabled
           rxvt-clone terminal emulator featuring tabbing, url launching,
            a Quake style drop-down mode and pseudo-transparency.
     - **File managers**
          - [Ranger] Console-based file manager with vi bindings, 
          customizability, and lots of features.
          - [PCManFM] when not in terminal I use this to browser
           my files.
     - **System monitoring**
          - [htop] Simple, ncurses interactive process viewer.
          - [Conky] Lightweight, scriptable system monitor. Am currently 
          using it as my top bar.
     - **System information viewer**
          - [screenfetch] Similar to archey but has an option to 
          take a screenshot. Written in bash.   
     - **Wallpaper setter**
          - [Nitrogen]  A fast and lightweight desktop background 
          browser and setter for X windows.


- **Documents and texts**
      - **Office suite**
           - [LibreOffice] just a fork for OpenOffice and suits my needs.
      - **Scientific documents**
           - [Texmaker] Cross-platform, light and easy-to-use LaTeX 
           IDE. It integrates many tools needed to develop documents with 
           LaTeX, in just one application
      - **Text editor**
           - [vim] my default editor for daily programming.    
           - [Geany] Text editor using the GTK+ toolkit with basic 
           features of an integrated development environment.
      - **Readers and Viewers**
           - [Calibre] E-book library management application that 
           can also convert between different formats and sync with a 
           variety of e-book readers
      - **PDF and DjVu**
           - [Evince] document viewer for multiple document formats. 
           Supports PDF, PostScript, DjVu, TIFF and DVI.
           - [Zathura] Highly customizable and functional PDF/DjVu/
           PostScript/ComicBook viewer (plugin based). This is my default 
           pdf reader.
           
- **Others**
      - **Terminal multiplexer**
           - [tmux] BSD licensed terminal multiplexer.
      - **Window manager**
           - [i3-gaps] a fork for [i3wm] with some additional 
           functionalities 
           such as gaps between borders and much more.
      - **Application launcher**
           - [dmenu] Fast and lightweight dynamic menu for X which is 
           also useful as an application launcher
           - [rofi] A popup window switcher roughly based on 
           superswitcher, requiring only xlib and pango. Currently this has
           been my default application launcher and I love it.
      - **Screen Lock**
           - [i3lock-fancy] currently it's my default screen lock.
      - **Theme switcher**
           - [lxappearance] lightweight switcher for gtk themes, icons, 
           fonts etc.
      - **Display manager**
          - [lightdm]

<a name="screenshots"></a>	
## Screenshots
Everyone loves screenshots; so here is my current rice.

####Clean
![alt Clean](https://raw.github.com/mohabaks/dotfiles/master/images/clean.png)

####Busy
ncmpcpp, ranger and htop in action.
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/busy.png)

####Luakit with custom homepage.
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/mpv.png)

####Vim and Manpage
current colorscheme [jellybeans].
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/vim.png)

####Video playe - Mpv
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/mpv.png)

####Zathura
Dark colorscheme can be found here [zathura].
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/zathura.png)

####IRC - Weechat
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/weechat.png)

####Application Laucher - Rofi
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/weechat.png)

####Screen Lock  [i3lock-fancy]
![alt busy](https://raw.github.com/mohabaks/dotfiles/master/images/weechat.png)

[more screenshots](http://imgur.com/a/LPyKb) for old rice.


<a name="inspiration-and-special-thanks"></a>	
## Inspiration and special thanks
- [Cronosse] thanks for the bar conky.
- [ObliviousGmn] thanks for the Homepage idea for the laukit.




<!---
Link References
-->

[.colors]:https://github.com/mohabaks/dotfiles/tree/master/.colors
[.i3]:
[.conky]:
[.icons]:
[.weechat]:
[.fonts]:
[.ncmpcpp]:
[.themes/Mire v2_Grey]:
[Homepage]:
[images]:
[luakit]:
[ranger]:
[scripts]:
[zathura]:

[i3-gaps]:https://github.com/Airblader/i3
[Arch Linux]:https://wiki.archlinux.org/
[i3wm]:http://i3wm.org/docs/userguide.html
[NetworkManager]:https://wiki.archlinux.org/index.php/NetworkManager
[Firefox]:https://mozilla.com/firefox
[Vimperator]:www.vimperator.org/
[Luakit]:https://wiki.archlinux.org/index.php/Luakit
[qutebrowser]:https://wiki.archlinux.org/index.php/Qutebrowser
[FileZilla]:https://en.wikipedia.org/wiki/FileZilla
[proFTPd]:https://wiki.archlinux.org/index.php/Proftpd
[rTorrent]:https://wiki.archlinux.org/index.php/RTorrent
[mps-youtube]:https://github.com/mps-youtube/mps-youtube
[Mutt]:http://www.mutt.org/
[Weechat]:https://en.wikipedia.org/wiki/WeeChat
[Newsbeuter]:http://newsbeuter.org/
[RTV]:https://github.com/michael-lazar/rtv
[gPodder]:http://gpodder.org/
[Pellican]:http://docs.getpelican.com/en/3.5.0/
[Rainbow Stream]:https://github.com/DTVD/rainbowstream
[feh]:http://feh.finalrewind.org/
[GIMP]:https://en.wikipedia.org/wiki/GIMP
[Inkscape]:http://inkscape.org/
[Blender]:http://www.blender.org/
[mpv]:http://mpv.io/
[FFmpeg]:http://ffmpeg.org/
[Open Shot]:http://www.openshotvideo.com/
[RecordMyDesktop]:http://recordmydesktop.sourceforge.net/
[cryptmount]:http://cryptmount.sourceforge.net/
[Geany]:https://geany.org/
[vim]:http://www.vim.org/
[urxvt]:http://software.schmorp.de/pkg/rxvt-unicode.html
[Ranger]:http://nongnu.org/ranger
[PCManFM]:http://wiki.lxde.org/en/PCManFM
[Htop]:http://htop.sourceforge.net/
[Conky]:https://github.com/brndnmtthws/conky
[screenfetch]:https://github.com/KittyKatt/screenFetch
[Nitrogen]:http://projects.l3ib.org/nitrogen/
[LibreOffice]:https://www.libreoffice.org/
[Texmaker]:http://www.xm1math.net/texmaker/
[Calibre]:http://calibre-ebook.com/
[Evince]:https://wiki.gnome.org/Apps/Evince
[tmux]:http://tmux.github.io/
[rofi]:http://davedavenport.github.io/rofi/
[dmenu]:http://tools.suckless.org/dmenu/
[i3lock-fancy]:https://github.com/meskarune/i3lock-fancy
[the Arch Way]:https://wiki.archlinux.org/index.php/Arch_Linux#Principles
[mpd]:https://github.com/sol/mpd
[lxappearance]:http://wiki.lxde.org/en/LXAppearance
[ligtdm]:https://wiki.archlinux.org/index.php/LightDM
[Cronosse]:http://cronosse.deviantart.com/art/Bottom-bar-conky-config-201410602
[ObliviousGmn]:http://obliviousgmn.deviantart.com/art/Reborn-525604184?q=gallery%3AObliviousGmn%2F14083002&qo=2
[Zathura]:https://pwmt.org/projects/zathura/
[jellybeans]:https://github.com/nanotech/jellybeans.vim
