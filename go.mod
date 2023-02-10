module github.com/stillmatic/json-go-benchmark

go 1.19

require (
	git.apache.org/thrift.git v0.0.0-20170204052355-a3d6be906b33
	github.com/buger/jsonparser v0.0.0-20160922145946-f04e003e4115
	github.com/gogo/protobuf v0.0.0-20170207102350-9c5b7bafbfcc
	github.com/golang/protobuf v0.0.0-20161117033126-8ee79997227b
	github.com/json-iterator/go v0.0.0-20161209050814-76bf0defae50
	github.com/mailru/easyjson v0.0.0-20170515185249-dffba8d13bbd
)

require (
	github.com/modern-go/reflect2 v1.0.2 // indirect
	golang.org/x/sync v0.1.0 // indirect
)

replace github.com/json-iterator/go => ../json-iterator-go
