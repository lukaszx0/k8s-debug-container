# k8s-debug-container

Docker image to use as Kubernetes debug container

## Usage

`$ docker build . -t debug-tools`

`$ kubectl debug -it $POD_NAME --image=debug-tools:latest --target=$CONTAINER_NAME`

## Tools

- [`apt-get`](https://linux.die.net/man/8/apt-get) - set up with `apt-transport-https` and `ca-certificates`
- [`curl`](https://github.com/curl/curl), [`vim`](https://github.com/vim/vim), [`screen`](https://www.gnu.org/software/screen/), [`tmux`](https://github.com/tmux/tmux), [`jq`](https://github.com/stedolan/jq) - common, well known dev utilities.
- [`dnsutils`](https://packages.debian.org/stretch/dnsutils) - includes [`dig`](https://linux.die.net/man/1/dig), [`nslookup`](https://linux.die.net/man/1/nslookup), [`nsupdate`](https://linux.die.net/man/8/nsupdate).
- [`iputils-ping`](https://packages.debian.org/stretch/iputils-ping) - includes [`ping`](https://linux.die.net/man/8/ping).
- [`net-tools`](https://packages.debian.org/stretch/net-tools) - includes [`arp`](http://man7.org/linux/man-pages/man8/arp.8.html), [`ifconfig`](https://linux.die.net/man/8/ifconfig), and [`netstat`](https://linux.die.net/man/8/netstat).
- [`tcpdump`](https://www.tcpdump.org/), [`traceroute`](https://linux.die.net/man/8/traceroute), [`netstat-nat`](https://linux.die.net/man/1/netstat-nat), [`netcat`](https://linux.die.net/man/1/nc), [`socat`](https://linux.die.net/man/1/socat), [`telnet`](https://linux.die.net/man/1/telnet) - common networking tools.
- [`iproute2`](https://wiki.linuxfoundation.org/networking/iproute2) - modern replacement for `net-tools` utils:

| Legacy utility       | Replacement command  | Note                                |
| -------------------- | -------------------- | ----------------------------------- |
| `ifconfig`           | `ip addr`, `ip link` | Address and link configuration      |
| `route`              | `ip route`           | Routing tables                      |
| `arp`                | `ip neigh`           | Neighbors                           |
| `iptunnel`           | `ip tunnel`          | Tunnels                             |
| `nameif`, `ifrename` | `ip link set name`   | Rename network interfaces           |
| `ipmaddr`            | `ip maddr`           | Multicast                           |
| `netstat`            | `ss`, `ip route`     | Show various networking statistics  |
| `brctl`              | `bridge`             | Handle bridge addresses and devices |

- [`strace`](https://github.com/strace/strace), [`lsof`](https://linux.die.net/man/8/lsof) - linux system debugging tools
- [`dstat`](http://dag.wiee.rs/home-made/dstat/) - replacement for `vmstat`, `iostat`, `netstat` and `ifstat`.
- [`htop`](https://hisham.hm/htop/), [`atop`](https://www.atoptool.nl/) - system monitoring tools
- [`openssl`](https://www.openssl.org/), [`gnupg`](https://www.gnupg.org/), [`certigo`](https://github.com/square/certigo) - cryptography and SSL tools.
