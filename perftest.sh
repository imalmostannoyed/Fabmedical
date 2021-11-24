host="fabmedical-496129.mongo.cosmos.azure.com"
username="fabmedical-496129"
password="vDBQDpA291qaYQP8sOgygKkRruP9WGLPjNwq4DYCjaBraEx9CduOMrARTtyy9YKGEYj5HTXEuFV72ch8Ydc4WA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
