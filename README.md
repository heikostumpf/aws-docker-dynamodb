# aws-docker-dynamodb

## Build docker image
```
docker build -t aws-dynamodb .
```

```
docker run -p 8000:8000 -t aws-dynamodb
```

## Usage
```
http://localhost:8000/shell/
```

```
aws dynamodb list-tables --endpoint-url http://localhost:8000/
```
