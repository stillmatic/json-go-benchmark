module github.com/stillmatic/json-go-benchmark

go 1.19

require (
	github.com/apache/thrift v0.17.0
	github.com/buger/jsonparser v1.1.1
	github.com/gogo/protobuf v1.3.2
	github.com/golang/protobuf v1.5.2
	github.com/json-iterator/go v0.0.0-20161209050814-76bf0defae50
	github.com/mailru/easyjson v0.7.7
)

require (
	github.com/josharian/intern v1.0.0 // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	golang.org/x/sync v0.1.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
)

replace github.com/json-iterator/go => ../json-iterator-go
