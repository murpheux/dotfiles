# -*- coding: utf-8 -*-

from libqtile.config import KeyChord, Key
from libqtile.command import lazy

from qlib import window_to_previous_screen, window_to_next_screen, switch_screens

mod = "mod4"                                 # Sets mod key to SUPER/WINDOWS
mod1 = "alt"
mod2 = "control"
mod3 = "shift"

chosenTerminal = "kitty"                             # My terminal of choice
secondaryTerminal = "alacritty"

keys = [
    # The essentials
    Key([mod], "Return", lazy.spawn(chosenTerminal + \
        " -e zsh"), desc='Launches My Terminal'),
    Key([mod, "shift"], "Return", lazy.spawn(
        "dmenu_run -p 'Run: '"), desc='Run Launcher'),
    Key([mod], "Tab", lazy.next_layout(), desc='Toggle through layouts'),
    Key([mod, "shift"], "c", lazy.window.kill(), desc='Kill active window'),
    Key([mod, "shift"], "r", lazy.restart(), desc='Restart Qtile'),
    Key([mod, "shift"], "q", lazy.shutdown(), desc='Shutdown Qtile'),
    Key([mod2, "shift"], "v", lazy.spawn("vi"), desc='Vim'),
    Key([mod2, "shift"], "e", lazy.spawn(
        "emacsclient -c -a emacs"), desc='Doom Emacs'),

    # Switch focus to specific monitor (out of two)
    Key([mod], "w", lazy.to_screen(0), desc='Keyboard focus to monitor 1'),
    Key([mod], "e", lazy.to_screen(1), desc='Keyboard focus to monitor 2'),
    #Key([mod], "r", lazy.to_screen(2), desc='Keyboard focus to monitor 3'),

    # Switch focus of monitors
    Key([mod], "period", lazy.next_screen(),
        desc='Move focus to next monitor'),
    Key([mod], "comma", lazy.prev_screen(),
        desc='Move focus to prev monitor'),

    # Treetab controls
    Key([mod, "shift"], "h", lazy.layout.move_left(),
        desc='Move up a section in treetab'),
    Key([mod, "shift"], "l", lazy.layout.move_right(),
        desc='Move down a section in treetab'),

    # Window controls
    Key([mod], "j", lazy.layout.down(),
        desc='Move focus down in current stack pane'),
    Key([mod], "k", lazy.layout.up(),
        desc='Move focus up in current stack pane'),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(
    ), lazy.layout.section_down(), desc='Move windows down in current stack'),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(),
        lazy.layout.section_up(), desc='Move winum_screensndows up in current stack'),
    Key([mod], "h", lazy.layout.shrink(), lazy.layout.decrease_nmaster(
    ), desc='Shrink window (MonadTall), decrease number in master pane (Tile)'),
    Key([mod], "l", lazy.layout.grow(), lazy.layout.increase_nmaster(
    ), desc='Expand window (MonadTall), increase number in master pane (Tile)'),
    Key([mod], "n", lazy.layout.normalize(),
        desc='normalize window size ratios'),
    Key([mod], "m", lazy.layout.maximize(),
        desc='toggle window between minimum and maximum sizes'),
    Key([mod, "shift"], "f", lazy.window.toggle_floating(),
        desc='toggle floating'),
    Key([mod], "f", lazy.window.toggle_fullscreen(),
        desc='toggle fullscreen'),

    # Stack controls
    Key([mod, "shift"], "Tab", lazy.layout.rotate(), lazy.layout.flip(),
        desc='Switch which side main pane occupies (XmonadTall)'),
    Key([mod], "space", lazy.layout.next(),
        desc='Switch window focus to other pane(s) of stack'),
    Key([mod, "shift"], "space", lazy.layout.toggle_split(),
        desc='Toggle between split and unsplit sides of stack'),

    # Move windows to different physical screens
    Key([mod, "shift"], "comma", lazy.function(window_to_previous_screen)),
    Key([mod, "shift"], "period", lazy.function(window_to_next_screen)),
    Key([mod], "t", lazy.function(switch_screens)),

    # Custom/App key bindiNGS
    KeyChord(["control"], "x", [
        Key([], "l", lazy.spawn("libreoffice --writer")),
    ]),

    Key([mod, "mod1"], "a", lazy.spawn("alacritty")),
    Key([mod, "mod1"], "b", lazy.spawn("brave")),
    Key([mod, "mod1"], "c", lazy.spawn("code")),
    Key([mod, "mod1"], "d", lazy.spawn("robo3t")),
    Key([mod, "mod1"], "e", lazy.spawn("thunar")),
    Key([mod, "mod1"], "f", lazy.spawn("kitty -e vifm ~/Documents ~/Downloads")),
    Key([mod, "mod1"], "g", lazy.spawn("gimp")),
    Key([mod, "mod1"], "h", lazy.spawn("bleachbit")),
    Key([mod, "mod1"], "i", lazy.spawn("nitrogen")),
    Key([mod, "mod1"], "k", lazy.spawn("inkscape")),
    Key([mod, "mod1"], "e", lazy.spawn("kitty -e vi")),
    Key([mod, "mod1"], "o", lazy.spawn("postman")),
    Key([mod, "mod1"], "p", lazy.spawn("brave --incognito")),
    Key([mod, "mod1"], "r", lazy.spawn("rambox")),
    Key([mod, "mod1"], "s", lazy.spawn("obs")),
    Key([mod, "mod1"], "t", lazy.spawn("teams")),
    Key([mod, "mod1"], "u", lazy.spawn("audacity")),
    Key([mod, "mod1"], "v", lazy.spawn("vlc -q --no-one-instance")),
    Key([mod, "mod1"], "m", lazy.spawn("remmina")),
    Key([mod, "mod1"], "w", lazy.spawn("libreoffice --writer")),
    Key([mod, "mod1"], "x", lazy.spawn("libreoffice --calc")),
    Key([mod, "mod1"], "y", lazy.spawn("lbry")),


    # Volume keys
    Key([], "XF86AudioMute", lazy.spawn("amixer -D pulse sset Master toggle")),
    Key([], "XF86AudioLowerVolume", lazy.spawn(
        "amixer -D pulse sset Master 5%-")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn(
        "amixer -D pulse sset Master 5%+")),

    # SCREENSHOTS
    Key([], "Print", lazy.spawn(
        "scrot 'ArcoLinux-%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f $$(xdg-user-dir PICTURES)'")),
    Key([mod2], "Print", lazy.spawn('xfce4-screenshooter')),
    Key([mod2, "shift"], "Print", lazy.spawn('gnome-screenshot -i')),

    # also allow changing volume, tracks the old fashioned way
    Key([mod], "equal", lazy.spawn("amixer -D pulse -q sset Master 5%+")),
    Key([mod], "minus", lazy.spawn("amixer -D pulse -q sset Master 5%-")),

    # Emacs programs launched using the key chord CTRL+e followed by 'key'
    KeyChord(["control"], "e", [
             Key([], "e", lazy.spawn("emacsclient -c -a 'emacs'"),
                 desc='Launch Emacs'),
             Key([], "b", lazy.spawn("emacsclient -c -a 'emacs' --eval '(ibuffer)'"),
                 desc='Launch ibuffer inside Emacs'),
             Key([], "d", lazy.spawn("emacsclient -c -a 'emacs' --eval '(dired nil)'"),
                 desc='Launch dired inside Emacs'),
             Key([], "i", lazy.spawn("emacsclient -c -a 'emacs' --eval '(erc)'"),
                 desc='Launch erc inside Emacs'),
             Key([], "m", lazy.spawn(
                 "emacsclient -c -a 'emacs' --eval '(mu4e)'"), desc='Launch mu4e inside Emacs'),
             Key([], "n", lazy.spawn("emacsclient -c -a 'emacs' --eval '(elfeed)'"),
                 desc='Launch elfeed inside Emacs'),
             Key([], "s", lazy.spawn("emacsclient -c -a 'emacs' --eval '(eshell)'"),
                 desc='Launch the eshell inside Emacs'),
             Key([], "v", lazy.spawn(
                 "emacsclient -c -a 'emacs' --eval '(+vterm/here nil)'"), desc='Launch vterm inside Emacs')
             ]),

    # Dmenu scripts launched using the key chord SUPER+p followed by 'key'
    KeyChord([mod], "p", [
             Key([], "e", lazy.spawn("./dmscripts/dmconf"),
                 desc='Choose a config file to edit'),
             Key([], "i", lazy.spawn("./dmscripts/dmscrot"),
                 desc='Take screenshots via dmenu'),
             Key([], "k", lazy.spawn("./dmscripts/dmkill"),
                 desc='Kill processes via dmenu'),
             Key([], "l", lazy.spawn("./dmscripts/dmlogout"), desc='A logout menu'),
             Key([], "m", lazy.spawn("./dmscripts/dman"),
                 desc='Search manpages in dmenu'),
             Key([], "o", lazy.spawn("./dmscripts/dmqute"),
                 desc='Search your qutebrowser bookmarks and quickmarks'),
             Key([], "r", lazy.spawn("./dmscripts/dmred"),
                 desc='Search reddit via dmenu'),
             Key([], "s", lazy.spawn("./dmscripts/dmsearch"),
                 desc='Search various search engines via dmenu'),
             Key([], "p", lazy.spawn("passmenu"),
                 desc='Retrieve passwords with dmenu')
             ]),

    # Lock and Powermangament
    Key([mod2, "mod1"], 'l', lazy.spawn('light-locker-command -l'))
    #Key([mod2, "mod1"], 'l', lazy.spawn('dm-tool lock'))
]
