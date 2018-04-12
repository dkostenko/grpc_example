go run main.go

ruby main.rb

Для генерации пакетов / модулей необходимо использовать следующие команды:

Для Go
```
protoc --go_out=plugins=grpc:. *.proto
```

Для Ruby
```
grpc_tools_ruby_protoc api.proto --ruby_out=./rb --grpc_out=./rb
```