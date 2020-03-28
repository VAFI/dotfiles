 ######################################################################################################
 ######################################################################################################
 ##       8888888 .d8888b.       .d8888b.   .d88888b.  888b    888 8888888888 8888888  .d8888b.      ##  
 ##         888  d88P  Y88b     d88P  Y88b d88P" "Y88b 8888b   888 888          888   d88P  Y88b     ##
 ##         888       .d88P     888    888 888     888 88888b  888 888          888   888    888     ##
 ##         888      8888"      888        888     888 888Y88b 888 8888888      888   888            ##
 ##         888       "Y8b.     888        888     888 888 Y88b888 888          888   888  88888     ##
 ##         888  888    888     888    888 888     888 888  Y88888 888          888   888    888     ##
 ##         888  Y88b  d88P     Y88b  d88P Y88b. .d88P 888   Y8888 888          888   Y88b  d88P     ##
 ##       8888888 "Y8888P"       "Y8888P"   "Y88888P"  888    Y888 888        8888888  "Y8888P88     ##
 ##                                                                                                  ##
 ##               888888b. Y88b   d88P     888     888      d8888 8888888888 8888888                 ##  
 ##               888  "88b Y88b d88P      888     888     d88888 888          888                   ##   
 ##               888  .88P  Y88o88P       888     888    d88P888 888          888                   ##
 ##               8888888K.   Y888P        Y88b   d88P   d88P 888 8888888      888                   ##
 ##               888  "Y88b   888          Y88b d88P   d88P  888 888          888                   ##
 ##               888    888   888           Y88o88P   d88P   888 888          888                   ##
 ##               888   d88P   888            Y888P   d8888888888 888          888                   ##
 ## v1            8888888P"    888             Y8P   d88P     888 888        8888888      2020-03-29 ##
 ######################################################################################################
 ######################################################################################################


# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3status
}



 ######################################################################################################
 ######################################################################################################
 ##               888    888  .d88888b. 88888888888 888    d8P  8888888888 Y88b   d88P               ##   
 ##               888    888 d88P" "Y88b    888     888   d8P   888         Y88b d88P                ##   
 ##               888    888 888     888    888     888  d8P    888          Y88o88P                 ##   
 ##               8888888888 888     888    888     888d88K     8888888       Y888P                  ##    
 ##               888    888 888     888    888     8888888b    888            888                   ##   
 ##               888    888 888     888    888     888  Y88b   888            888                   ##   
 ##               888    888 Y88b. .d88P    888     888   Y88b  888            888                   ##   
 ##               888    888  "Y88888P"     888     888    Y88b 8888888888     888                   ##   
 ######################################################################################################
 ######################################################################################################


#####  Screenshot  #####
        #screen
        bindsym Print exec "flameshot full --path minecraft/screen/"
        #area 
        bindsym shift+Print exec "gnome-screenshot -a"
        #screen clip
        bindsym ctrl+Print exec "flameshot full -c"
        #area clip
        bindsym ctrl+shift+Print exec "flameshot gui"
#####     Kill     #####
        # kill focused window
        bindsym ctrl+q kill

#####  Start dmenu #####
        bindsym $mod+d exec dmenu_run




# switch to workspace
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"


# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

bindsym $mod+r mode "resize"

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal





 ######################################################################################################
 ######################################################################################################
 ##              d8888 888     888 88888888888  .d88888b.  8888888b.  888     888 888b    888        ##
 ##             d88888 888     888     888     d88P" "Y88b 888   Y88b 888     888 8888b   888        ##
 ##            d88P888 888     888     888     888     888 888    888 888     888 88888b  888        ##
 ##           d88P 888 888     888     888     888     888 888   d88P 888     888 888Y88b 888        ##
 ##          d88P  888 888     888     888     888     888 8888888P"  888     888 888 Y88b888        ##
 ##         d88P   888 888     888     888     888     888 888 T88b   888     888 888  Y88888        ##
 ##        d8888888888 Y88b. .d88P     888     Y88b. .d88P 888  T88b  Y88b. .d88P 888   Y8888        ##
 ##       d88P     888  "Y88888P"      888      "Y88888P"  888   T88b  "Y88888P"  888    Y888        ##
 ######################################################################################################
 ######################################################################################################            

exec --no-startup-id flameshot
exec --no-startup-id tilix
exec --no-startup-id firefox
exec --no-startup-id  pavucontrol
exec --no-startup-id touchpad-indicator

##### Set keyboard language #####
exec setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle"

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet






 ######################################################################################################
 ######################################################################################################
 ##                  8888888b.  8888888888  .d8888b. 8888888  .d8888b.  888b    888                  ##   
 ##                  888  "Y88b 888        d88P  Y88b  888   d88P  Y88b 8888b   888                  ##   
 ##                  888    888 888        Y88b.       888   888    888 88888b  888                  ##
 ##                  888    888 8888888     "Y888b.    888   888        888Y88b 888                  ##
 ##                  888    888 888            "Y88b.  888   888  88888 888 Y88b888                  ##
 ##                  888    888 888              "888  888   888    888 888  Y88888                  ##
 ##                  888  .d88P 888        Y88b  d88P  888   Y88b  d88P 888   Y8888                  ##  
 ##                  8888888P"  8888888888  "Y8888P" 8888888  "Y8888P88 888    Y888                  ##           
 ######################################################################################################
 ######################################################################################################

#####    Delete border    ##### 
default_border pixel
for_window [tiling] border pixel 0
                                                                        
#####    Set background   #####
exec --no-startup-id feh --bg-scale Pictures/wallhaven-mdzld1.png 

#####   Workspace names   #####
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8





 ######################################################################################################
 ######################################################################################################
 ##                        888     888 88888888888 8888888 888      .d8888b.                         ##
 ##                        888     888     888       888   888     d88P  Y88b                        ##
 ##                        888     888     888       888   888     Y88b.                             ##   
 ##                        888     888     888       888   888      "Y888b.                          ##   
 ##                        888     888     888       888   888         "Y88b.                        ##
 ##                        888     888     888       888   888           "888                        ##   
 ##                        Y88b. .d88P     888       888   888     Y88b  d88P                        ##   
 ##                         "Y88888P"      888     8888888 88888888 "Y8888P"                         ##
 ######################################################################################################
 ######################################################################################################



##### Auto move window #####
for_window [class="firefox"] move to workspace $ws2
for_window [class="Tilix"] move to workspace $ws1
for_window [class="obs"] move to workspace $ws10
for_window [class="Pavucontrol"] move to workspace $ws10
set $mod Mod4
