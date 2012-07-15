# nagios-check-http-proxy

Check a HTTP/HTTPS endpoint using a proxy

## Usage

The simple usage is

```
check_http_proxy -P proxyhost:port -H hostname
```

Which will attempt to connect to `hostname` using `proxyhost:port` as
the HTTP proxy. By default will attempt to connect once with a timeout
of `30s`.

For all the options see `check_http_proxy -h`, displayed below for reference

```
Usage: $check_http_proxy [OPTIONS] [-S] -P PROXY -H HOST [-p PORT] [-u URL]

Options:
  -H HOST            host to check
  -p PORT            port to check [default: 80]
  -S                 use HTTPS (changes port default to 443)
  -u URL             url path with leading / [default: /]

  -P PROXY           proxy url in hostname:port format

  -n TRIES           number of times to try [default: 1]
  -t TIMEOUT         amount of time to wait for a connection in seconds [default: 30]
```
