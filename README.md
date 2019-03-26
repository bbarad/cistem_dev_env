# cistem_dev_env
A Docker container for cisTEM development


# Installation

## Install X server
MacOS: 
- install XQuartz
- Open it, goto preferences > Security and check the option to allow connections from network clients
- Reboot

## Install Docker
MacOS:
- `brew cask install docker`

## Increase memory limit for Docker VM
Docker > Preferences > Advanced
Increase memory limit to e.g. 8GB (default is 2GB)

# Running
`sh run.sh`

This launches 3 windows using your X server:
- an xterm terminal
- Eclipse
- wxformbuilder

Note that the Docker container will terminate if you close the xterm terminal.

# Eclipse configuration
- Import project from local git repository
- To get all the symbols resolved by the Eclipse CDT indexer, go to Project > Properties > C/C++ General > Paths & Symbols and add the following include directories:
-- /usr/include
-- /usr/include/x86_64-linux-gnu
-- /usr/local/include
-- /usr/lib/gcc/x86_64-linux-gnu/7/include
-- /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed
-- /usr/local/lib/wx/include/gtk2-unicode-static-3.0
-- /usr/local/include/wx-3.0
- Character encoding: Change the Workspace charset to UTF-8 (Menu>Windows>Preferences: in tab: General>Workspace) 

