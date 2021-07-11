

from libqtile.widget.battery import Battery, BatteryState


class MyBattery(Battery):
    def build_string(self, status):
        if self.layout is not None:
            if status.state == BatteryState.DISCHARGING and status.percent < self.low_percentage:
                self.layout.colour = self.low_foreground
            else:
                self.layout.colour = self.foreground
        if status.state == BatteryState.DISCHARGING:
            if status.percent > 0.75:
                char = ''
            elif status.percent > 0.45:
                char = ''
            else:
                char = ''
        elif status.percent >= 1 or status.state == BatteryState.FULL:
            char = ''
        elif status.state == BatteryState.EMPTY or \
                (status.state == BatteryState.UNKNOWN and status.percent == 0):
            char = ''
        else:
            char = ''
        return self.format.format(char=char, percent=status.percent)

    def restore(self):
        self.format = '{char}'
        self.font = 'Font Awesome 5 Free'
        self.timer_setup()

    def button_press(self, x, y, button):
        self.format = '{percent:2.0%}'
        self.font = 'TamzenForPowerline Bold'
        self.timer_setup()
        self.timeout_add(1, self.restore)
