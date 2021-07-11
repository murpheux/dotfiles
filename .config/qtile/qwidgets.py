# -*- coding: utf-8 -*-

import os
import socket

from libqtile import qtile
from libqtile import layout, bar, widget, hook

chosenTerminal = "kitty"
prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())

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


def init_widgets_s1():
    widgets_list = [
        widget.TextBox(text='', background=colors[0], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox(text=" 🌦", foreground=colors[2], background=colors[5], padding=0),
        widget.OpenWeather(api_key='ea2fc5ee1deeaaee1bc60eb1bf60cb4b', cityid=5913490,
            format='{location_city}: {main_temp}°{units_temperature} 💧{humidity}%',
            mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(
            chosenTerminal + ' --hold -e curl wttr.in/calgary')},
            foreground=colors[2], background=colors[5]),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(text=" ₿", padding=0, foreground=colors[2], background=colors[4], fontsize=12),
        widget.BitcoinTicker(foreground=colors[2], background=colors[4], padding=5, currency="CAD",
                             mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' --hold -e curl rate.sx/btc')}),
    ]
    return widgets_list


def init_widgets_base():
    widgets_base = [
        widget.Sep(linewidth=0, padding=6,
                   foreground=colors[2], background=colors[0]),
        widget.Image(filename="~/.config/qtile/icons/terminal-iconx24.png", scale="False",
                     mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(chosenTerminal)}),
        widget.Sep(linewidth=0, padding=6,
                   foreground=colors[2], background=colors[0]),
        widget.GroupBox(fontsize=9, margin_y=3, margin_x=0, padding_y=5, padding_x=3, borderwidth=3, active=colors[2], inactive=colors[7], rounded=False, highlight_color=colors[1], highlight_method="line",
                        this_current_screen_border=colors[6], this_screen_border=colors[4], other_current_screen_border=colors[6], other_screen_border=colors[4], foreground=colors[2], background=colors[0]),
        widget.Prompt(prompt=prompt, padding=10, foreground=colors[3], background=colors[1]),
        widget.Sep(linewidth=0, padding=40, foreground=colors[2], background=colors[0]),
        widget.WindowName(foreground=colors[6], background=colors[0], padding=0),
    ]
    return widgets_base


def init_widgets_up():
    widgets_up = [
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox(text=" 🔊", foreground=colors[2], background=colors[5], padding=0, fontsize=14,
                       mouse_callbacks={"Button1": lambda: qtile.cmd_spawn("pavucontrol")}),
        widget.TextBox( text=" Vol:", foreground=colors[2], background=colors[5], padding=0),
        widget.Volume(foreground=colors[2], background=colors[5], padding=5),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.CurrentLayoutIcon(custom_icon_paths=[os.path.expanduser(
            "~/.config/qtile/icons")], foreground=colors[0], background=colors[4], padding=0, scale=0.7),
        widget.CurrentLayout( foreground=colors[2], background=colors[4], padding=5),
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox( text=" 📅", foreground=colors[2], background=colors[5], padding=2, fontsize=14),
        widget.Clock( foreground=colors[2], background=colors[5], format="%a, %b %d - %I:%M%p ",
            mouse_callbacks={'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' --hold -e cal -y')})
    ]
    return widgets_up


def init_widgets_s2():
    widgets_list = [
        widget.Systray(background=colors[0], padding=5),
        widget.Sep(linewidth=0, padding=6, foreground=colors[0], background=colors[0]),
        widget.TextBox( text='', background=colors[0], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox( text=" 📶", foreground=colors[2], background=colors[4], padding=0, fontsize=14),
        widget.Net(interface="enp3s0f0", format='{down} ↓↑ {up}',
                   foreground=colors[2], background=colors[4], padding=5, mouse_callbacks={
                       'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' -e sudo iftop -i enp3s0f0')}),
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox(text=" 🔥", padding=2, foreground=colors[2], background=colors[5], fontsize=11),
        widget.ThermalSensor( metric=True, padding=2, foreground=colors[2], background=colors[5]),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(text=" ⟳", padding=2, foreground=colors[2], background=colors[4], fontsize=14),
        widget.CheckUpdates(update_interval=1800, distro="Arch_checkupdates", display_format="{updates} Updates", foreground=colors[2], mouse_callbacks={
                            'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' -e paru')}, background=colors[4]),
        widget.TextBox( text='', background=colors[4], foreground=colors[5], padding=0, fontsize=37),
        widget.TextBox( text=" 🐏", foreground=colors[2], background=colors[5], padding=0, fontsize=14),
        widget.Memory(foreground=colors[2], background=colors[5], mouse_callbacks={
                      'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' -e bpytop')}, padding=5),
        widget.TextBox( text='', background=colors[5], foreground=colors[4], padding=0, fontsize=37),
        widget.TextBox(text=" 💻", padding=0, foreground=colors[2], background=colors[4], fontsize=12),
        widget.CPU(foreground=colors[2], background=colors[4], mouse_callbacks={
            'Button1': lambda: qtile.cmd_spawn(chosenTerminal + ' --hold -e neofetch')}, padding=5),
    ]
    return widgets_list
