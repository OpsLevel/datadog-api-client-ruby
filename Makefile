.PHONY: all
all:
	@rm -rf ./lib/datadog_api_client/v1 ./lib/datadog_api_client/v2
	@pre-commit run --all-files --hook-stage=manual generator-v1 || true
	@pre-commit run --all-files --hook-stage=manual generator-v2 || true
	@pre-commit run --all-files --hook-stage=manual docs || echo "modified files"
