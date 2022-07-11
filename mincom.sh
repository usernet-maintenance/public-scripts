ssh mincom-csap-1 "
rm -f test.sh
wget https://github.com/usernet-maintenance/public-scripts/raw/main/test.sh
chmod +x test.sh
./test.sh
rm -f result.zip
zip -r result result.zip
"
