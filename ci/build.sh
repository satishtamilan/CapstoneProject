git clone ppTest resource-app
echo "cloning done"
echo "About to print pwd1 value -"
echo $(pwd)
cd resource-app
echo "About to print pwd2 value -"
echo $(pwd)
echo "inside resource-app/CapstoneProject"
mvn clean install -e -DskipTests=true || ErrorHandler "Build Failed for test"
echo "------installation done---------"
