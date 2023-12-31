#!/bin/bash

if [[ "$PHYSGUN_UTILS" -eq 1 ]]; then
    export LD_PRELOAD="/physgun/scrds.so"
fi

SRCDS_RUNNABLE=srcds_run
if [[ "$SRCDS_X64" -eq 1 ]]; then
    SRCDS_RUNNABLE=srcds_run_x64
fi

exec /home/container/$SRCDS_RUNNABLE -game garrysmod -console -port $SERVER_PORT +ip 0.0.0.0 +host_workshop_collection $WORKSHOP_ID +map $SRCDS_MAP +gamemode $GAMEMODE -strictportbind -norestart +sv_setsteamaccount $STEAM_ACC +maxplayers $MAX_PLAYERS -tickrate $TICKRATE  $( [ "$LUA_REFRESH" == "1" ] || printf %s '-disableluarefresh' ) $( [ "$NO_ADDONS" == "0" ] || printf %s '-noaddons' ) $( [ "$NO_WORKSHOP" == "0" ] || printf %s '-noworkshop' )