#!/bin/bash
echo -e "establish a supercell from a unit cell"
echo -e "Please input the number of the atoms:\c"
read atomnumber
echo -e "please input the rule for supercell\n x1  y2  z3 "
read x1 y2 z3
if [ -f input.txt ];then
echo "exist"
rm -f input.txt
fi
let kcount=0
let increase=1
while [ $kcount -ne $atomnumber ]; do

echo -e "please input the $kcount atom x, y, z coordinates...\n atom type   x     y  z"
read atomtype x y z
echo -e "$x  $y  $z\n"
xx=$x; yy=$y; zz=$z
kcountx=0

   while [ $kcountx -lt $x1 ]; do
        kcounty=0
        while [ $kcounty -lt $y2 ]; do
              kcountz=0
              while [ $kcountz -lt $z3 ]; do
              x=`echo $x1 $kcountx $xx|awk '{printf "%0.8f\n", 1/$1*$2+$3/$1}'`
              y=`echo $y2 $kcounty $a $b $yy|awk '{printf "%0.8f\n", 1/$1*$2*$4/$3+$5/$1}'`
              z=`echo $z3 $kcountz $a $c $zz|awk '{printf "%0.8f\n", 1/$1*$2*$4/$3+$5/$1}'`
              echo "$x   $y   $z"
              kcountz=$((kcountz+1));
              echo $atomtype $x $y $z >>input.txt
              done
        kcounty=$((kcounty+1));
    done
   kcountx=$((kcountx+1));
  done
let kcount=kcount+1
done
