swagger.serve:
	docker run \
		--rm \
		-p 8041:8080 \
		-e SWAGGER_JSON=/docs/api.yaml \
		-v ${PWD}/api.yaml:/docs/api.yaml \
		-v ${PWD}/schemas/:/docs/schemas/ \
		swaggerapi/swagger-ui
