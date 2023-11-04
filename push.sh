#!/bin/sh

USER=z8888.sharkfin@gmail.com
GKEY=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

log() {
    echo $* >&2
}

usage() {
    log "Usage:\n"
    log "\t./$(basename $0) <comment string>"
    echo ""
}

main() {
    comment="$(shift 0; echo "$*")"

	git config --local user.name $USER
	git add --all
	git commit -a -m "$comment" --author $USER
	git push origin main
}

main $@