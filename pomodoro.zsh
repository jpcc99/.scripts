#!/bin/zsh
#	@author:	João Pedro da Costa
#	@email:		jpcc.dev@gmail.com
#	@git-repo:	github.com/jpcc99
#	Description:
#       A minimalistic pomodoro script

notify-send '🍅 Pomodoro' 'Stay focused! 🎯'
sleep 1500 &&  notify-send '🍅 Pomodoro' '25 minutes passed' \
    && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
# Short pause
sleep 300 && notify-send '🍅 Pomodoro' 'Back to work!' \
    && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
