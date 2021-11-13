# computer_init

Development computer initialization after formatting

## Clone this repository

```console
sudo apt update
sudo apt install git
git clone https://github.com/felixbouazza/computer_init.git
```

## Installed package

- Python 3
- Terminator
- Keepass 2
- NodeJS v16.0.0 LTS
- VSCodeubuntu
- Docker

## Execution right

```console
sudo chmod +x init.sh
```

## Usage

```console
./init.sh
```

## For full docker installation

You have to logout, login from your distribution and run "newgrp docker"


## Test script

```console
docker build . -t test-script
docker run -it test-script sh
cd computer_init
./init.sh
```