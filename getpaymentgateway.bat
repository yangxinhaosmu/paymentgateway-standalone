echo off
echo *** this script will download and run the payment gateway application. Always run this script from the command line ***
pause
if not exist paymentgateway-standalone\ (
call git clone https://github.com/vppmatt/paymentgateway-standalone.git
cd paymentgateway-standalone
) else (
cd paymentgateway-standalone
call git pull
)
call mvnw clean package
java -jar target/payments-0.0.1-SNAPSHOT.jar
