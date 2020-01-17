#!/bin/bash
echo "Hello. You've just activated touchpad_on.sh!"
 
xinput > a.tmp
grep -r "CUST" a.tmp > b.tmp
id_number=`cut -b55-56 b.tmp`
rm -r a.tmp b.tmp
echo "lol the mousepad's id is $id_number"
xinput set-prop $id_number "Device Enabled" 1
#End of File

