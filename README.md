# My emacs setting

This is the setup file for emacs. The first target is [GNU Emacs fot Max OS X](https://emacsformacosx.com/). But you might use it on other platform with slight modification.

This setting is depends on multiple packages for emacs. Prerequisites are described into `prereq-package.el` and you can install it from the file. (See `3. Install Packages` below)

To use doxymacs correctly, you need to install the [doxyemacs](https://doxymacs.sourceforge.net/) under `/usr/local/share/emacs/site-lisp/doxymacs`.

# Setup

## 1. Download and placement

  1. Clone this repository into `~/github/piste-emacs-setting.org`
    - `% cd ~/github`
    - `% git clone git@github.com:piste-jp-ibm/piste-emacs-setting.git` or `% git clone https://github.com/piste-jp-ibm/piste-emacs-setting.git`
  2. Link `~/.emacs.d` to `~/github/piste-emacs-setting.org/emacs.d`
    - `% cd`
    - `% ln -s ~/github/piste-emacs-setting.org/emacs.d ~/.emacs.d`

## 2. Install fonts

This setting file uses the fontys below.

- Bitstream Vera Sans Mono
- Dejavu Sans Mono
- Plemol JP NF

Need to install fonts if you want to use GUI. For macOS, you can use Homebrew. In other platform, you might need to modify `emacsxx.el` file to use your perfered fonts.

```
brew tap homebrew/cask-fonts
brew install font-plemol-jp
brew install font-plemol-jp-nf
brew install font-plemol-jp-nfj
brew install font-plemol-jp-hs
brew install font-bitstream-vera-sans-mono-nerd-font
brew install font-dejavu-sans-mono-nerd-font
```

## 3. Install Packages

  1. Open `~/.emacs.d/prereq-package.el` by your emacs
  2. Kick install process by `M-x eval-buffer`
  3. Create an empty file `~/.emacs.d/secret.el`
    - `% touch ~/.emacs.d/secret.el`
  4. Restart emacs

## 4. Adjustment for you environment

You might need to remove a few setting from `~/.emacs.d/emacs[VERSION].el`. For example, you need to remove the settings of doxymacs if you didn't copy the [doxyemacs](https://doxymacs.sourceforge.net/) into `/usr/local/share/emacs/site-lisp/doxymacs`.
