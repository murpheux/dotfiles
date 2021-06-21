# -*- coding: utf-8 -*-
import os
import re
import socket
import subprocess

from libqtile import qtile
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from typing import List  # noqa: F401
#from plasma import Plasma

mod = "mod4"                                 # Sets mod key to SUPER/WINDOWS
mod1 = "alt"
mod2 = "control"
mod3 = "shift"
chosenTerminal = "kitty"                             # My terminal of choice
secondaryTerminal = "alacritty"
home = os.path.expanduser('~')


class Winger(layout.MonadTall):
    columns_sizes = [1, 2, 1]
    pass


def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)


def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)


def window_to_previous_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i != 0:
        group = qtile.screens[i - 1].group.name
        qtile.current_window.togroup(group)


def window_to_next_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i + 1 != len(qtile.screens):
        group = qtile.screens[i + 1].group.name
        qtile.current_window.togroup(group)


def switch_screens(qtile):
    i = qtile.screens.index(qtile.current_screen)
    group = qtile.screens[i - 1].group
    qtile.current_screen.set_group(group)


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
        lazy.layout.section_up(), desc='Move windows up in current stack'),
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
    Key([mod, "mod1"], "e", lazy.spawn("microsoft-edge-dev")),
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
    Key([mod, "mod1"], "t", lazy.spawn("thunar")),
    Key([mod, "mod1"], "u", lazy.spawn("audacity")),
    Key([mod, "mod1"], "v", lazy.spawn("vlc -q --no-one-instance")),
    Key([mod, "mod1"], "m", lazy.spawn("remmina")),
    Key([mod, "mod1"], "w", lazy.spawn("libreoffice --writer")),
    Key([mod, "mod1"], "x", lazy.spawn("libreoffice --calc")),
    Key([mod, "mod1"], "y", lazy.spawn("lbry")),


    # Volume keys

    Key([], "XF86AudioMute", lazy.spawn("amixer -D pulse sset Master toggle")),
    Key([], "XF86AudioLowerVolume", lazy.spawn( "amixer -D pulse sset Master 5%-")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn( "amixer -D pulse sset Master 5%+")),

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

    #Key([mod2, "mod1"], 'l', lazy.spawn('dm-tool lock'))
    Key([mod2, "mod1"], 'l', lazy.spawn('light-locker-command -l'))
]

group_names = [
    ("🏠", {'layout': 'monadtall'}),
    ("🌎", {'layout': 'monadtall'}),
    ("📦", {'layout': 'monadtall'}),
    ("🔧", {'layout': 'monadtall'}),
    ("💾", {'layout': 'monadtall'}),
    ("🔌", {'layout': 'monadtall'}),
    ("💻", {'layout': 'monadtall'}),
    ("🔨", {'layout': 'monadtall'}),
    ("🎬", {'layout': 'floating'})
]

groups = [Group(name, **kwargs) for name, kwargs in group_names]

for i, (name, kwargs) in enumerate(group_names, 1):
    # Switch to another group
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))
    # Send current window to another group
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name)))

layout_theme = {
    "border_width": 2,
    "margin": 8,
    "border_focus": "e1acff",
    "border_normal": "1D2330"
}

layouts = [
    layout.MonadWide(**layout_theme),
    # layout.Bsp(**layout_theme),
    #layout.Stack(stacks=2, **layout_theme),
    layout.Columns(**layout_theme),
    # layout.RatioTile(**layout_theme),
    #layout.Tile(shift_windows=True, **layout_theme),
    # layout.VerticalTile(**layout_theme),
    # layout.Matrix(**layout_theme),
    # layout.Zoomy(**layout_theme),
    layout.MonadTall(**layout_theme),
    layout.Max(**layout_theme),
    layout.Stack(num_stacks=2),
    layout.RatioTile(**layout_theme),
    layout.TreeTab(font="UbuntuMono Nerd Font", fontsize=10, sections=["FIRST", "SECOND", "THIRD", "FOURTH"], section_fontsize=10, border_width=2,
                   bg_color="1c1f24", active_bg="c678dd", active_fg="000000", inactive_bg="a9a1e1", inactive_fg="1c1f24", padding_left=0,
                   padding_x=0, padding_y=5, section_top=10, section_bottom=20, level_shift=8, vspace=3, panel_width=200),
    layout.Floating(**layout_theme)
]

colors = [
    ["#282c34", "#282c34"],  # panel background
    ["#3d3f4b", "#434758"],  # background for current screen tab
    ["#ffffff", "#ffffff"],  # font color for group names
    ["#ff5555", "#ff5555"],  # border line color for current tab
    # border line color for 'other tabs' and color for 'odd widgets'
    ["#74438f", "#74438f"],
    ["#4f76c7", "#4f76c7"],  # color for the 'even widgets'
    ["#e1acff", "#e1acff"],  # window name
    ["#ecbbfb", "#ecbbfb"],  # backbround for inactive screens

    ["#ffffff", "#ffffff"],
    ["#000000", "#000000"],
    ["#292d3e", "#292d3e"],
    ["#434758", "#434758"],
    ["#bc13fe", "#bc13fe"],
    ["#8d62a9", "#8d62a9"],
    ["#668bd7", "#668bd7"],
    ["#e1acff", "#e1acff"],
    ["#AD343E", "#AD343E"],
    ["#f76e5c", "#f76e5c"],
    ["#F39C12", "#F39C12"],
    ["#F7DC6F", "#F7DC6F"],
    ["#f1ffff", "#f1ffff"],
    ["#4c566a", "#4c566a"]
]

prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())

##### DEFAULT WIDGET SETTINGS #####
widget_defaults = dict(
    font="UbuntuMono Nerd Font Bold",
    fontsize=14,
    padding=2,
    background=colors[2]
)
extension_defaults = widget_defaults.copy()


def init_widgets_s1():
    widgets_list = [
        widget.TextBox( text='', background=colors[0], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox( text=" 🌦  ", foreground=colors[2], background=colors[4], padding=0),
        widget.OpenWeather(api_key='ea2fc5ee1deeaaee1bc60eb1bf60cb4b', cityid=5913490,
                           format='{location_city}: {main_temp}°{units_temperature} 💧{humidity}%',
                           mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(
                               chosenTerminal + ' --hold -e curl wttr.in/calgary')},
                           foreground=colors[2], background=colors[4]),
    ]
    return widgets_list


def init_widgets_base():
    widgets_base = [
        widget.Sep(linewidth=0, padding=6, foreground=colors[2], background=colors[0]),
        widget.Image(filename="~/.config/qtile/icons/manjaro_maia_32x32.png", scale="False",
                     mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(chosenTerminal)}),
        widget.Sep(linewidth=0, padding=6, foreground=colors[2], background=colors[0]),
        widget.GroupBox(font="UbuntuMono Nerd Font Bold", fontsize=9, margin_y=3, margin_x=0, padding_y=5, padding_x=3, borderwidth=3, active=colors[2], inactive=colors[7], rounded=False, highlight_color=colors[1], highlight_method="line",
                        this_current_screen_border=colors[6], this_screen_border=colors[4], other_current_screen_border=colors[6], other_screen_border=colors[4], foreground=colors[2], background=colors[0]),
        widget.Prompt(prompt=prompt, font="UbuntuMono Nerd Font", padding=10, foreground=colors[3], background=colors[1]),
        widget.Sep(linewidth=0, padding=40, foreground=colors[2], background=colors[0]),
        widget.WindowName( foreground=colors[6], background=colors[0], padding=0),
    ]
    return widgets_base

def init_widgets_up():
    widgets_up = [
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox( text=" 🔊", foreground=colors[2], background=colors[5], padding=0, fontsize=14,
                mouse_callbacks={ "Button1": lambda: qtile.cmd_spawn("pavucontrol")}),
        widget.TextBox( text=" Vol:", foreground=colors[2], background=colors[5], padding=0),
        widget.Volume(foreground=colors[2], background=colors[5], padding=5),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.CurrentLayoutIcon(custom_icon_paths=[os.path.expanduser(
            "~/.config/qtile/icons")], foreground=colors[0], background=colors[4], padding=0, scale=0.7),
        widget.CurrentLayout( foreground=colors[2], background=colors[4], padding=5),
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox( text=" 📅", foreground=colors[2], background=colors[5], padding=0, fontsize=14),
        widget.Clock(
            foreground=colors[2], background=colors[5], format="%a, %b %d - %I:%M%p ",
            mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' --hold -e cal -y')})
    ]
    return widgets_up


def init_widgets_s2():
    widgets_list = [
        widget.Systray(background=colors[0], padding=5),
        widget.Sep(linewidth=0, padding=6, foreground=colors[0], background=colors[0]),
        widget.TextBox( text='', background=colors[0], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(
            text=" 📶", foreground=colors[2], background=colors[4], padding=0, fontsize=14),
        widget.Net(interface="enp3s0f0", format='{down} ↓↑ {up}',
                   foreground=colors[2], background=colors[4], padding=5),
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox(text=" 🔥", padding=2,
                       foreground=colors[2], background=colors[5], fontsize=11),
        widget.ThermalSensor(
            metric=True, padding=2, foreground=colors[2], background=colors[5]),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(text=" ⟳", padding=2, foreground=colors[2], background=colors[4], fontsize=14),
        widget.CheckUpdates(update_interval=1800, distro="Arch_checkupdates", display_format="{updates} Updates", foreground=colors[2], mouse_callbacks={
                            'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' -e sudo pacman -Syu')}, background=colors[4]),
        widget.TextBox(
            text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox(
            text=" 🐏", foreground=colors[2], background=colors[5], padding=0, fontsize=14),
        widget.Memory(foreground=colors[2], background=colors[5], mouse_callbacks={
                      'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' -e bpytop')}, padding=5),
        widget.TextBox(
            text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(text=" 💻", padding=0,
                       foreground=colors[2], background=colors[4], fontsize=12),
        widget.CPU(foreground=colors[2], background=colors[4], mouse_callbacks={
            'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' --hold -e neofetch')}, padding=5),
    ]
    return widgets_list


def init_widgets_screen1():
    widgets_screen1 = init_widgets_base() + init_widgets_s1() + init_widgets_up()
    return widgets_screen1


def init_widgets_screen2():
    widgets_screen2 = init_widgets_base() + init_widgets_s2() + init_widgets_up()
    # Monitor 2 will display all widgets in widgets_list
    return widgets_screen2


def init_screens():
    return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
            Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20))]


def init_widgets_list():
    lst = init_widgets_base() + init_widgets_screen2() + init_widgets_up()
    return lst


if __name__ in ["config", "__main__"]:
    screens = init_screens()
    widgets_list = init_widgets_list()
    widgets_screen1 = init_widgets_screen1()
    widgets_screen2 = init_widgets_screen2()

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    # default_float_rules include: utility, notification, toolbar, splash, dialog,
    # file_progress, confirm, download and error.
    *layout.Floating.default_float_rules,
    Match(title='Confirmation'),      # tastyworks exit box
    Match(title='Qalculate!'),        # qalculate-gtk
    Match(wm_class='kdenlive'),       # kdenlive
    Match(wm_class='pinentry-gtk-2'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"


@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/autostart.sh'])


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
