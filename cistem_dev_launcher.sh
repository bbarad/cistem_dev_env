#!/bin/bash
#
# Stuff to launch within the cisTEM development docker
#
/opt/eclipse/eclipse &
wxformbuilder &
xterm &
xterm -e top # Keeps the display alive on a mac.
