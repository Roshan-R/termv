<h1 align="center">
  termv
</h1>

<p align="center"> A terminal iptv player written in written in bash</p><br>

<p align="center">
  <img src="https://user-images.githubusercontent.com/43182697/115367690-0eed9a00-a1e4-11eb-999b-52529bf2fba1.gif">
</p>

`iptv` is a small bash script that allows you to select an iptv stream using `fzf` and play it using `mpv`.


## Dependencies
- `wget`
- `mpv`
- [`jq`](https://github.com/stedolan/jq)
- [`fzf`](https://github.com/junegunn/fzf)

## Installation

### Direct download
`sudo wget -O /usr/bin/termv -q --show-progress https://raw.githubusercontent.com/Roshan-R/termv/main/termv && sudo chmod +x /usr/bin/termv`
