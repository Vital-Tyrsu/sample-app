# Testing if docker sample app is running and IP address and port must be as expected
if curl http://172.17.0.1:5099/ | grep "calling"; then
    exit 0
else
    exit 1
fi
