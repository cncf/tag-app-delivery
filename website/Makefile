serve:
	hugo server \
		--disableFastRender \
		--buildDrafts \
		--buildFuture \
		--ignoreCache
		--printI18nWarnings \
		--printMemoryUsage \
		--printPathWarnings \
		--printUnusedTemplates \
		--templateMetrics \
		--templateMetricsHints \
		--gc

production-build:
	git submodule update --init --recursive
	./duplicate_missing_content.sh
	hugo \
		--minify
	npx -y pagefind --site public

preview-build:
	git submodule update --init --recursive
	./duplicate_missing_content.sh
	hugo \
		--baseURL $(DEPLOY_PRIME_URL) \
		--buildDrafts \
		--buildFuture \
		--minify
	npx -y pagefind --site public