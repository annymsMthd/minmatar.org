.PHONY: build build-tests run stop setup test front-end-unit-tests

build: build-tests
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.ci.yml \
		build

run: stop build
	docker compose \
		-f docker-compose.yml \
		up \
		--exit-code-from proxy --abort-on-container-exit \
		proxy

stop:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.ci.yml \
		down

test: front-end-unit-tests

front-end-unit-tests: stop build
	docker compose \
		-f docker-compose.ci.yml \
		up \
		--exit-code-from frontend-unit-tests --abort-on-container-exit \
		frontend-unit-tests

end-to-end-test: stop build
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.ci.yml \
		up \
		--exit-code-from end-to-end --abort-on-container-exit \
		end-to-end

setup:
# todo: setup .env files
