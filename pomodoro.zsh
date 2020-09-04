#!/bin/zsh
#	@author:	João Pedro da Costa
#	@email:		jpcc.dev@gmail.com
#	@git-repo:	github.com/jpcc99
#	Description:
#       A minimalistic pomodoro script

# TODO Options to choose beteween: do a pause or just count a 25'
# TODO Choose how many cycles you wanto to do

function start_cycle() {
    start_pomodoro
    do_pause
}

function start_pomodoro() {
    notify-send '🍅 Pomodoro' 'Stay focused! 🎯'
    $(sleep 1500 &&  notify-send '🍅 Pomodoro' '25 minutes passed' \
        && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga)

}

function do_pause() {
    # Short pause
    $(sleep 300 && notify-send '🍅 Pomodoro' 'Back to work!' \
        && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga)

}

start_cycle
