INSTALLPREFIX=/usr/local
# count these files
FILES = linklint

default:
	@echo choices are:
	@echo - make install
	@echo - make notes
	@echo - make count

install:
	install -m 0755 linklint ${INSTALLPREFIX}/bin/linklint

notes:
	@-grep -ER '(FIXME|TODO|XXX|THINKME):' ./* | cut -c 3- || :
#	@cat TODO.txt

# outputs date, line-count, file-count, average-lines-per-file
# ignore blank lines and comments
count:
	@FCOUNT=$$(ls ${FILES} | wc -l) && \
		LCOUNT=$$(cat ${FILES} | sed "s/#.*//" | awk NF | wc -l) && \
		AVG=$$(echo "scale=1;$$LCOUNT/$$FCOUNT" | bc -l) && \
		echo $$(date +%Y-%m-%d), "$$LCOUNT", "$$FCOUNT", "$$AVG"
