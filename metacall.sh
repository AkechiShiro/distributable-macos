#!/usr/bin/env bash

export LOC=metacall

# TODO: Check if it is running a package manager and execute it

# MetaCall Environment
#CORE_ROOT=$LOC/runtimes/dotnet/shared/Microsoft.NETCore.App/ # TODO: Add version
export LOADER_LIBRARY_PATH="$LOC/lib"
export SERIAL_LIBRARY_PATH="$LOC/lib"
export DETOUR_LIBRARY_PATH="$LOC/lib"
export PORT_LIBRARY_PATH="$LOC/lib"
[[ -n $LOADER_SCRIPT_PATH ]] && export LOADER_SCRIPT_PATH="$CWD"
export CONFIGURATION_PATH=$LOC/configurations/global.json

# Execute MetaCall CLI 
$LOC/metacallcli $@
