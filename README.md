<h1 align="center">
  termv
</h1>

<p align="center"> A terminal iptv player written in written in bash</p><br>

<p align="center">
  <img src="https://user-images.githubusercontent.com/43182697/115367690-0eed9a00-a1e4-11eb-999b-52529bf2fba1.gif">
</p>

`termv` is a small bash script that allows you to select an iptv stream using `fzf` and play it using `mpv`.

the list of channels is obtained from [https://github.com/iptv-org/iptv](https://github.com/iptv-org/iptv)


## Dependencies
- `wget`
- `mpv`
- [`jq`](https://github.com/stedolan/jq)
- [`fzf`](https://github.com/junegunn/fzf)

## Usage

```console
termv

A command line program to watch tv online.

-f, --full-screen 
        Opens mpv in fullscreen
-h, --help
        Show help
--version
        Show version

```

## Installation

### Direct download
```sh
sudo wget -O /usr/bin/termv -q --show-progress https://raw.githubusercontent.com/Roshan-R/termv/main/termv && sudo chmod +x /usr/bin/termv
```

### Installation by cloning the repository

```sh
git clone https://github.com/Roshan-R/termv
cd termv
```

+ **Install with the Makefile**

```sh
sudo make install
```

+ **Uninstall with the Makefile**

```sh
sudo make uninstall
```

## Credits
Thanks to [`ytfzf`](https://github.com/pystardust/ytfzf) for the Makefile and
[`tmpmail`](https://github.com/sdushantha/tmpmail) as a reference on how to structure bash scripts. 
