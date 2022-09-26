build:
ifdef version
	docker build . -t randyhermawan/serverless-go-env:$(version)
else
	echo "no image version given"
endif

push:
ifdef version
	docker push randyhermawan/serverless-go-env:$(version)
else
	echo "no image version given"
endif

buildpush: 
ifdef version
	docker build . -t randyhermawan/serverless-go-env:$(version)
	docker push randyhermawan/serverless-go-env:$(version)
else
	echo "no image version given"
endif

.PHONY:
	build push buildpush