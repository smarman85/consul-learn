# vars
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

build:
	docker build --tag consulbase .

run: 
	docker run -it --name consul-cont -v $(mkfile_dir):/srv -d consulbase

dev-env: build run

attach:
	docker exec -it consul-cont bash

destroy:
	docker rm -f consul-cont
	docker rmi consulbase
