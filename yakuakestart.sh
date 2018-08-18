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
