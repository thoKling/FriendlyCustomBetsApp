# Friendly custom bets app

[![codecov](https://codecov.io/gh/thoKling/FriendlyCustomBetsApp/branch/main/graph/badge.svg)](https://codecov.io/gh/thoKling/FriendlyCustomBetsApp)

## :rocket: Setup
1. Follow [the flutter installation guide](https://docs.flutter.dev/get-started/install).
2. Run flutter doctor
3. Run flutter pub get (in the project directory)
4. Run flutter pub run build_runner build --delete-conflicting-outputs
5. Run the project

## Api update

```bash
wget http://localhost:7000/v3/api-docs -o openapi-gen/swaggers/api.json
```

```bash 
java -jar openapi-gen/openapi-generator-cli.jar generate -i openapi-gen/swaggers/api.yaml -g dart-dio -c openapi-gen/config.yaml -o openapi-gen/api --enable-post-process-file
```

```bash
cd openapi-gen/api; flutter pub run build_runner build --delete-conflicting-outputs 
```