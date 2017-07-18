VERSION = 1.1.3

dist:
	mkdir -p condor-cron-$(VERSION)
	mkdir -p condor-cron-$(VERSION)/wrappers
	cp -pr etc/ libexec/ condor-cron-$(VERSION)/
	cp wrappers/condor_cron* condor-cron-$(VERSION)/wrappers/
	tar czf condor-cron-$(VERSION).tar.gz condor-cron-$(VERSION)/
	rm -fr condor-cron-$(VERSION)
	@echo "To install into upstream area run:"
	@echo "  mkdir -p /p/vdt/public/html/upstream/condor-cron/$(VERSION)"
	@echo "  mv condor-cron-$(VERSION).tar.gz /p/vdt/public/html/upstream/condor-cron/$(VERSION)/"

clean:
	rm -fr condor-cron-*

.PHONY: dist clean
