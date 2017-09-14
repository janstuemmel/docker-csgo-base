# docker csgo

a very basic csgo docker image to inherit from.

## Usage

```sh
docker build -t csgobase .
docker run --name csgobase_server \
  -p "27015:27015/udp" \
  csgobase /server/srcds_run <arguments>
```
