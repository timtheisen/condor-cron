VERSION = 1.0.7

_default:
	@echo "Nothing to make. Try make install"

clean:
	rm -fr condor-cron-*

dist:
	mkdir -p condor-cron-$(VERSION)
	mkdir -p condor-cron-$(VERSION)/wrappers
	cp -pr etc/ libexec/ condor-cron-$(VERSION)/
	cp wrappers/condor_cron* condor-cron-$(VERSION)/wrappers/
	tar czf condor-cron-$(VERSION).tar.gz condor-cron-$(VERSION)/
	rm -fr condor-cron-$(VERSION)
	echo "To install into upstream area run:"
	echo "  mv condor-cron-$(VERSION).tar.gz /p/vdt/public/html/upstream/condor-cron/"
