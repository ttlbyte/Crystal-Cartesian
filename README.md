# Crystal-Cartesian
I set up this project simply for generating Cartesian coordinates to be used in a slab first-principle calculation. Because the Cartesian coordinates stay unchanged when I add different height of vacuum. There are two bash script in this project.
- supercell.sh
- dirtocar.sh
##  Usage
-First step, just run
```shell
 $ ./supercell.sh
 ```
No parameters needed. Following the hints you will create a supercell which you may use in a slab calculation. This script will build a file named _input.txt_. This file contains four columns, the first containing the atomtype and the following three containing the x y z Direct coordinates of the atom. This script was not written by me. But I can't remember the origin author.  
After the _input.txt_ was built, simply type in the terminal
```shell
$ ./dirtocar.sh
```
this will convert the Direct coordinates contained in _input.txt_ to Cartesian coordinates and save in the file named _cartesian.txt_.
