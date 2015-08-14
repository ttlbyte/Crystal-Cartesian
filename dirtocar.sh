#!/bin/bash
if [ -r input.txt ] ;then
    echo inputfile exist
else
    echo "inputfile do not exist!"
fi
echo -e "Please input the lattice vector a\n"
read a1 a2 a3
echo -e "Please input the lattice vector b\n"
read b1 b2 b3
echo -e "Please input the lattice vector c\n"
read c1 c2 c3
if [ -f cartesian.txt ] ;then
echo "cartesian.txt exist, auto delete"
rm -f cartesian.txt
fi
#a1=24.78616
#a2=0
#a3=0
#b1=-9.29481
#b2=16.09908
#b3=0
#c1=0
#c2=0
#c3=29.42934
cat input.txt|while read line
do
   atomlab=`echo $line|awk '{printf "%s\n", $1}'`
   x=`echo "$line $a1 $b1 $c1"|awk '{printf "%0.8f\n", $2*$5+$3*$6+$4*$7}'`
   y=`echo "$line $a2 $b2 $c2"|awk '{printf "%0.8f\n", $2*$5+$3*$6+$4*$7}'`
   z=`echo "$line $a3 $b3 $c3"|awk '{printf "%0.8f\n", $2*$5+$3*$6+$4*$7}'`
   echo "$atomlab $x $y $z" >>cartesian.txt
done
