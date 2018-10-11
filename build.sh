SHA=`git rev-parse HEAD`
docker build -f rails/Dockerfile -t rails:${SHA} .

