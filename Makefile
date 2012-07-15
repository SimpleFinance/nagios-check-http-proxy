NAME=nagios-check-http-proxy
VERSION=$(shell bin/check_http_proxy -v | cut -d' ' -f 2)
DESCRIPTION="Check a HTTP/HTTPS endpoint using a proxy"
VENDOR="Simple Finance"
MAINTAINER="<cosmin@offbytwo.com>"
URL="https://github.com/SimpleFinance/nagios-check-http-proxy"
LICENSE="Apache-2.0"
PREFIX=/usr/local

BUILDCMD=-n ${NAME} -s dir -v ${VERSION} --url=${URL} --description=${DESCRIPTION} -m ${MAINTAINER} --vendor=${VENDOR} --license=${LICENSE} --prefix=${PREFIX} -a all bin

clean:
	rm -f *.deb
	rm -f *.rpm

deb:
	fpm -t deb ${BUILDCMD}

rpm:
	fpm -t rpm ${BUILDCMD}
