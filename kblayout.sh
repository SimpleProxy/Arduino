#!/usr/bin/sh

# Sets the base keyborad layout to br-abnt2
setxkbmap br -variant abnt2
# To remap a key xmodmap -e "keycode NUMBER = KEYSYMNAME ...
# Where NUMBER is the key's number and KEYSYMNAME is/are the new value(s)
# first keysymname: when no modifier key is pressed with key
# second keysymname: when shift is pressed in conjunction with key
# third keysymname: when mode_switch (control) in conjunction with key
# fourth keysymname: when mode_switch and shift are pressed with key
xmodmap -e "clear lock"

xmodmap -e "keycode 108 = Alt_L"    # Alt_GR    -> Alt_L
#xmodmap -e "keycode 118 = Return"   # insert    -> Return
#xmodmap -e "keycode 127 = bar"      # pause     ->
xmodmap -e "keycode 34 = bar backslash"       # acute     -> pipe |
xmodmap -e "keycode 66 = Escape"    # CAPS      -> ESC

xmodmap -e "keysym ccedilla = slash backslash"   # Print     -> PageUP
xmodmap -e "keysym Print = Prior"   # Print     -> PageUP
xmodmap -e "keysym Pause = Next"    # Pause     -> PageDown
xmodmap -e "keysym Insert = Return" # Insert    -> Return

# xset r enables the new values' repetition
xset r 108
xset r 34
xset r 66

exit 0
