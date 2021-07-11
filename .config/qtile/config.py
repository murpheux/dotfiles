# -*- coding: utf-8 -*-
import os
import subprocess

from libqtile import qtile
from libqtile.config import Click, Drag, Group, KeyChord, Key, Match, Screen
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook
from typing import List

from qkeys import keys
from qlib import window_to_prev_group, window_to_next_group
from qwidgets import init_widgets_base, init_widgets_up, init_widgets_s1, init_widgets_s2

# Sets mod key to SUPER/WINDOWS
mod = "mod4"
qtile_font = "UbuntuMono Nerd Font Bold"

#hostname = platform.node()
home = os.path.expanduser('~')
num_screens = 2 #get_num_monitors()

group_names = ["🏠", "🌎", "📦", "🔨", "🔧", "💾", "🔌", "💻", "🎬"]
groups = [Group(name, layout='monadtall') for name in group_names]

for i, name in enumerate(group_names, 1):
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
    layout.Columns(**layout_theme),
    layout.MonadTall(**layout_theme),
    layout.Max(**layout_theme),
    layout.Stack(num_stacks=2),
    layout.RatioTile(**layout_theme),
    layout.TreeTab(font=qtile_font, fontsize=10, sections=["FIRST", "SECOND", "THIRD", "FOURTH"], section_fontsize=10, border_width=2,
                   bg_color="1c1f24", active_bg="c678dd", active_fg="000000", inactive_bg="a9a1e1", inactive_fg="1c1f24", padding_left=0,
                   padding_x=0, padding_y=5, section_top=10, section_bottom=20, level_shift=8, vspace=3, panel_width=200),
    layout.Floating(**layout_theme)
]

colors = [
    "#282c34",  # panel background
    "#3d3f4b",  # background for current screen tab
    "#ffffff",  # font color for group names
    "#ff5555",  # border line color for current tab
    # border line color for 'other tabs' and color for 'odd widgets'
    "#74438f",
    "#4f76c7",  # color for the 'even widgets'
    "#e1acff",  # window name
    "#ecbbfb",  # backbround for inactive screens
]

##### DEFAULT WIDGET SETTINGS #####
widget_defaults = dict(
    font=qtile_font,
    fontsize=14,
    padding=2,
    background=colors[2]
)
extension_defaults = widget_defaults.copy()


def init_widgets_screen1():
    widgets_screen1 = init_widgets_base() + init_widgets_s1() + init_widgets_up()
    return widgets_screen1


def init_widgets_screen2():
    widgets_screen2 = init_widgets_base() + init_widgets_s2() + init_widgets_up()
    # Monitor 2 will display all widgets in widgets_list
    return widgets_screen2


def init_screens():
    screens = []

    for scrn in range(num_screens):
        if scrn == num_screens - 1: # last screen
            screens.append(Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20)))
        else:
            screens.append(Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)))

    return screens


def init_widgets_list():
    lst = init_widgets_base() + init_widgets_screen2() + init_widgets_up()
    return lst


if __name__ in ["config", "__main__"]:
    screens = init_screens()
    widgets_list = init_widgets_list()
    widgets_screen1 = init_widgets_screen1()
    widgets_screen2 = init_widgets_screen2()

# Mouse control
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
    subprocess.call([f'{home}/.config/qtile/autostart.sh'])


wmname = "LG3D"
