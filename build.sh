docker rmi landrush-test
docker rm -f landrush-build
docker build -t landrush-test .
docker run --name landrush-build landrush-test
docker cp landrush-build:/landrush/pkg/landrush.dev.gem .
gem install landrush.dev.gem
