

from libqtile import bar, hook, layout, qtile, widget


IS_WAYLAND: bool = qtile.core.name == "wayland"
IS_XEPHYR: bool = int(os.environ.get("QTILE_XEPHYR", 0)) > 0

class QVolume(widget.Volume):
    def _configure(self, qtile, bar):
        widget.Volume._configure(self, qtile, bar)
        self.volume = self.get_volume()
        if self.volume <= 0:
            self.text = ''
        elif self.volume <= 15:
            self.text = ''
        elif self.volume < 50:
            self.text = ''
        else:
            self.text = ''
        # drawing here crashes Wayland

        if IS_WAYLAND:
            self.wob = "/tmp/wob-" + qtile.core.display_name

    def _update_drawer(self, wob=False):
        if self.volume <= 0:
            self.text = ''
        elif self.volume <= 15:
            self.text = ''
        elif self.volume < 50:
            self.text = ''
        else:
            self.text = ''
        self.draw()

        if wob:
            with open(self.wob, 'a') as f:
                f.write(str(self.volume) + "\n")

    def cmd_increase_vol(self):
        subprocess.call('amixer set PCM 4%+'.split())
        self.volume = self.get_volume()
        self._update_drawer(wob=IS_WAYLAND)


    def cmd_decrease_vol(self):
        subprocess.call('amixer set PCM 4%-'.split())
        self.volume = self.get_volume()
        self._update_drawer(wob=IS_WAYLAND)

    def cmd_mute(self):
        subprocess.call('amixer set Master toggle'.split())
        self.channel = 'Master'
        self.volume = self.get_volume()
        self.channel = 'PCM'
        if self.volume == 0:
            self.volume = self.get_volume()
        self._update_drawer(wob=IS_WAYLAND)
