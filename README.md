# nagios-check-http-proxy

Check a HTTP/HTTPS endpoint using a proxy

## Usage

The simple usage is

```
check_http_proxy -P proxyhost:port -u url
```

Which will attempt to connect to `url` using `proxyhost:port` as
the HTTP proxy. By default will attempt to connect once with a timeout
of `30s`.

For all the options see `check_http_proxy -h`, displayed below for reference

```
Usage: $check_http_proxy [OPTIONS] -P PROXY -u URL

Options:
    -u URL             URL in protocol://domain:[port]/path format. 

    -P PROXY           proxy url in hostname:port format

    -n TRIES           number of times to try [default: 1]
    -t TIMEOUT         amount of time to wait for a connection in seconds [default: 30]
```
