# Joseph Tannhuber <sepp.tannhuber@yahoo.de>, 2013
# Solarized like colorscheme, similar to solarized-dircolors
# from https://github.com/seebi/dircolors-solarized.
# This is a modification of Roman Zimbelmann's default colorscheme.
# This software is distributed under the terms of the GNU GPL version 3.

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Solarized(ColorScheme):
    progress_bar_color = blue

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            fg = 244
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                bg = 15
            if context.border:
                fg = default
            if context.media:
                if context.image:
                    fg = 11
                else:
                    fg = 14
            if context.container:
                fg = 61
            if context.directory:
                fg = 13
                # bg = 00
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                fg = 10
                attr |= bold
            if context.socket:
                fg = 12
                bg = 00
                attr |= bold
            if context.fifo:
                fg = 11
                bg = 11
                attr |= bold
            if context.device:
                fg = 244
                bg = 11
                attr |= bold
            if context.link:
                fg = context.good and red or blue
                bg = context.bad and 235
                attr |= bold
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (red, magenta):
                    fg = white
                else:
                    fg = red
            if not context.selected and (context.cut or context.copied):
                fg = 234
                attr |= bold
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = 11
                    bg = 8
            if context.badinfo:
                if attr & reverse:
                    bg = magenta
                else:
                    fg = magenta

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = context.bad and 11 or 14
                bg = context.bad and 00
            elif context.directory:
                fg = 10
            elif context.tab:
                fg = context.good and 13 or 15
                bg = 239
            elif context.link:
                fg = cyan

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 12
                elif context.bad:
                    fg = red
            if context.marked:
                attr |= bold | reverse
                fg = 237
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 11
                    bg = 235
            if context.loaded:
                bg = self.progress_bar_color

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 15

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        return fg, bg, attr
