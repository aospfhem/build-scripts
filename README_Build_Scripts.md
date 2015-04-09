NOOBBUILDS Build Scripts

NOTE: Prior to using the build script check the file properties to assure it 
is executable and change if not.

The "make -jx" is set to `getconf _NPROCESSORS_ONLN`. This will use the total 
number of available processor threads. To change this setting open the *.sh 
file with a text editor and set to your choice. 

Use N9ROM.sh if user has no ccache setup.  ./N9ROM.sh

Use N9ROMCC.sh if user has ccache setup.   ./N9ROMCC.sh

Use N6ROM.sh if user has no ccache setup.  ./N6ROM.sh

Use N6ROMCC.sh if user has ccache setup.   ./N6ROMCC.sh 
