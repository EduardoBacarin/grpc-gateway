.PHONY: proto runapi rungateway
proto:
	buf generate --template proto/buf.gen.yaml proto

runapi:
	cd cmd/api && go run .
	
rungateway:
	cd cmd/gateway && go run .