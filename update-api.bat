curl http://localhost:7000/v3/api-docs -o openapi-gen/swaggers/api.json

java -jar openapi-gen/openapi-generator-cli.jar generate -i openapi-gen/swaggers/api.json -g dart-dio -c openapi-gen/config.yaml -o openapi-gen/api --enable-post-process-file

cd ./openapi-gen/api

flutter pub run build_runner build --delete-conflicting-outputs
