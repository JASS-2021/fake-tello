# FakeTello

Fake Tello Server to test interaction with Tello Drones.

## Usage

Start Container
```bash
$ docker run -ip 8889:8889/udp ghcr.io/jass-2021/fake-tello 
```

Use Netcat to communicate with the server. Use `Ctrl+D` to send commands.
```bash
$ nc -uv 127.0.0.1 8899
Connection to 127.0.0.1 port 8899 [udp/*] succeeded!
command
> ok
battery?
> 66
```
