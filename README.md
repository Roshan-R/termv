<h1 align="center">
  termv
</h1>

<p align="center">A terminal iptv player written in bash</p><br>

<p align="center">
  <img src="https://user-images.githubusercontent.com/43182697/129660097-60d91974-06ff-4d11-869d-6ddc6c1aff75.gif">
</p>

`termv` is a small bash script that allows you to select an iptv stream using `fzf` and play it using `mpv`.

the list of channels is obtained from [https://github.com/iptv-org/iptv](https://github.com/iptv-org/iptv)


## Dependencies
- `curl`
- `mpv`
- `gawk`
- [`jq`](https://github.com/stedolan/jq)
- [`fzf`](https://github.com/junegunn/fzf)
- `xdo` (optional, for `-s` flag)

## Usage

```console
Usage:   termv [OPTIONS] query

Options:
  General Options:
    -h, --help                Print this help text and exit.
    -v, --version             Print program version and exit.
    -u, --update              Update channel list to latest version.

  Player Options:
    -f, --full-screen         Open mpv in fullscreen.
    -s, --swallow             Swallow terminal during playback (X11 only) based on devour; https://github.com/salman-abedin/devour.sh

  Environment variables:  
    TERMV_AUTO_UPDATE         Auto update channel list to latest version. (default: true)
    TERMV_SWALLOW             Alwayse swallow terminal during playback. (default: false)
    TERMV_FULL_SCREEN         Alwayse open mpv in fullscreen. (default: false)
    TERMV_DEFAULT_MPV_FLAGS   Default arguments which are passed to mpv. (default: --no-resume-playback)

  Improve me on GitHub:
    https://github.com/Roshan-R/termv
```

## Installation

### Direct download
```sh
sudo wget -O /usr/local/bin/termv -q --show-progress https://raw.githubusercontent.com/Roshan-R/termv/main/termv && sudo chmod +x /usr/local/bin/termv
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

+ **Arch Linux: Install from the AUR (with your preferred AUR helper)**

```sh
yay -S termv-git
```

## Credits
Thanks to [`ytfzf`](https://github.com/pystardust/ytfzf) for the Makefile and
[`tmpmail`](https://github.com/sdushantha/tmpmail) as a reference on how to structure bash scripts. 
