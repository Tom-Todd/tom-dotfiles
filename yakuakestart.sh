#!/bin/sh

TERMINAL_ID_0=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId 0)
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 0 "Main"

qdbus org.kde.yakuake /yakuake/sessions splitTerminalLeftRight ${TERMINAL_ID_0}
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 1 "watch -n 3 sensors -A asus-isa-0000 coretemp-isa-0000"

qdbus org.kde.yakuake /yakuake/sessions splitTerminalTopBottom 1
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 2 "top"

qdbus org.kde.yakuake /yakuake/sessions addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 1 "Mutt"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 3 "mutt"

qdbus org.kde.yakuake /yakuake/sessions addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 22 "mpd"
qdbus org.kde.yakuake /yakuake/sessions splitTerminalLeftRight 4
qdbus org.kde.yakuake /yakuake/sessions splitTerminalTopBottom 5
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 4 "mpd"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 6 "ncmpcpp -s playlist"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 5 "ncmpcpp -s visualizer"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 4 "ncmpcpp -s media_library"
