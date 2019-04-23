RSYNCARGS := --compress --recursive --checksum --itemize-changes \
	--delete -e ssh
DEST := cslinux:/research/eglpls2019

deploy:
	rsync $(RSYNCARGS) _site/ $(DEST)
