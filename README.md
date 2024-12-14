The Markdown Resume
===================

Original implementation: https://github.com/mszep/pandoc_resume

### Instructions

```bash
git clone -b template https://github.com/mwolson/resume
cd resume
vim markdown/resume.md   # insert your own resume info
```

#### Local

Make everything

```bash
make
```

Make specifics

```bash
make pdf
make html
```

#### Dockerized

Make everything

```bash
make docker
```

Make specifics

```bash
make FORMATS="html pdf" docker
```

or without having `make` installed:

```bash
docker compose run --build --rm resume-make html pdf
docker compose down
```

Reset Docker state

```bash
docker rm -vf $(docker ps -aq)
docker image rm resume-make
```

#### Custom styles

You can check the `styles/` directory to customize your CSS and TeX styles. Make sure you system have the corresponding font in your style file, such as changing "Helvetica" to "freesans".

#### Paper size

The default paper size for PDF documents is `letter`. To change it, edit the "pdf" rule in `Makefile` and set `papersize=A4`.

### Requirements

If not using `docker` then you will need the following dependencies.

* ConTeXt 0.6x
* pandoc 2.x
    * 1.x is deprecated

Last tested on the above versions and that's not to say the later versions won't work. Please try to use the latest versions when possible.

#### Debian / Ubuntu

```bash
sudo apt install pandoc context
```

#### Fedora
```bash
sudo dnf install pandoc texlive-collection-context
```

#### Arch
```bash
sudo pacman -S pandoc texlive
```

#### OSX
```bash
brew install pandoc
brew install --cask mactex
```

Make sure to add the directory `/Library/TeX/texbin/` to your path or `context` and `mtxrun` will not be found.

```
export PATH=$PATH:/Library/TeX/texbin/
```

#### Nix

Make sure to enable flakes, see [this](https://nixos.wiki/wiki/Flakes).

```bash
nix build
```

The built resume will end up in `./result`.

### Troubleshooting

#### Get versions

Check if the dependencies are up to date.

```
context --version
pandoc --version
```

#### Cannot process lua

Currently pandoc 1.x may be within your distro's repos and the latest version should be used. See the
[pandoc releases](https://github.com/jgm/pandoc/releases) for your distro.

e.g. for Debian / Ubuntu
```
wget https://github.com/jgm/pandoc/releases/download/2.2.1/pandoc-2.2.1-1-amd64.deb
sudo dpkg -i pandoc-2.2.1-1-amd64.deb
```

#### Context executable cannot be found

Some users have reported problems where their system does not properly find the ConTeXt
executable, leading to errors like `Cannot find context.lua` or similar. It has been found
that running `mtxrun --generate`, ([suggested on texlive-2011-context-problem](
https://tex.stackexchange.com/questions/53892/texlive-2011-context-problem)), can fix the
issue.
