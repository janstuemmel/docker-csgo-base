# docker csgo

A very basic csgo docker image to inherit from.

This container stores the csgo server files inside a layer (~15GB).

## Usage

```sh
docker build -t janstuemmel/csgo-base .
docker run --name csgobase_server \
  -p "27015:27015/udp" \
  csgobase /server/srcds_run <arguments>
```
