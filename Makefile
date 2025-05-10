.POSIX:
.PHONY: all git-meta yeet serve draft

REMOTE_HOST = axiometics.com
REMOTE_PATH = /var/www/axiometics.com

all: yeet

yeet:
	rsync -rvlh --progress --delete images index.html $(REMOTE_HOST):$(REMOTE_PATH)
