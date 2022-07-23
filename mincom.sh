ssh mincom-csap-1 "
rm -f test.sh
wget https://github.com/usernet-maintenance/public-scripts/raw/main/test.sh
chmod +x test.sh
./test.sh
rm -f result.zip
zip -r result.zip result
curl $(curl -s "https://bsakxn20uj.execute-api.us-east-1.amazonaws.com/default/usernet-paper-upload") --upload-file result.zip --header "X-Amz-ACL: public-read"
"
