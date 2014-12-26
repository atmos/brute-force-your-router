.PHONY: build doc fmt lint run test vendor_clean vendor_get vendor_update vet

BREW_PREFIX := $(shell brew --prefix 2>/dev/null)

default:
	nmap --script http-brute -p 80 192.168.1.1 \
		--script-args userdb=./userdb
