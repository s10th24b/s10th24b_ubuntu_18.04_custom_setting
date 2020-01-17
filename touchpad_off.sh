#!/bin/bash
echo "Hello. You've just activated touchpad_off.sh!"
 
xinput > a.tmp
grep -r "CUST" a.tmp > b.tmp
id_number=`cut -b55-56 b.tmp`
#id_number=12
rm -r a.tmp b.tmp
echo "lol the mousepad's id is $id_number"
xinput set-prop $id_number "Device Enabled" 0
#End of File

