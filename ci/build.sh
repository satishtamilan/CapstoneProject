#!/usr/bin/env bash
sudo su
git clone CapstoneProject resource-app
echo "cloning done"
echo "About to print pwd1 value -"
echo $(pwd)
chmod 777 resource-app
cd resource-app
echo "About to print pwd2 value -"
echo $(pwd)
mvn clean install -e -DskipTests=true || ErrorHandler "Build Failed for test"
chmod o+x target
echo $(ls -lart)
echo $(pwd)
cd target
echo $(ls)
echo "------installation done---------"
echo $(pwd)
