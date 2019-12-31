#!/bin/bash

chmod +x depnd
./depnd

#mkdir ~/Programs
#cd ..
#mv autoScript ~/Programs
#cd ~/Programs

#git clone https://github.com/ZerBea/hcxdumptool.git
#cd hcxdumptool
#make
#make install

#git clone https://github.com/ZerBea/hcxtools.git
#cd hcxtools
#make
#make install
cd ~
touch autoScript
echo "#!/bin/bash" >> autoScript
echo "INPUT=${1}" >> autoScript
echo "if [ -z $INPUT ]" >> autoScript
echo "then" >> autoScript
echo "cd ~/Programs/autoScript" >> autoScript
echo "./autoScript.sh" >> autoScript
echo "elif [ $INPUT == update ]" >> autoScript
echo "then" >> autoScript
echo "cd ~/Programs/autoScript" >> autoScript
echo "./update" >> autoScript
echo "else" >> autoScript
echo "echo "Not a modifier"" >> autoScript
echo "fi" >> autoScript
chmod +x autoScript
sudo mv autoScript /bin/

rm install.sh
