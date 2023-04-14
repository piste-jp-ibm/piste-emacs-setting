# My emacs setting

This setting is depends on multiple packages. It is described into `prereq-package.el`.

To use doxymacs correctly, you need to install the [doxyemacs](https://doxymacs.sourceforge.net/) under `/usr/local/share/emacs/site-lisp/doxymacs`.

# Setup

## 1. Download and placement

  1. Clone this repository into `~/github/piste-emacs-setting.org`
    - `% cd ~/github`
    - `% git clone git@github.com:piste-jp-ibm/piste-emacs-setting.git` or `% git clone https://github.com/piste-jp-ibm/piste-emacs-setting.git`
  2. Link `~/.emacs.d` to `~/github/piste-emacs-setting.org/emacs.d`
    - `% cd`
    - `% ln -s ~/github/piste-emacs-setting.org/emacs.d ~/.emacs.d`

## 2. Install Packages

  1. Open `~/.emacs.d/prereq-package.el` by your emacs
  2. Kick install process by `M-x eval-buffer`
  3. Create an empty file `~/.emacs.d/secret.el`
    - `% touch ~/.emacs.d/secret.el`
  4. Restart emacs

## 3. Adjustment for you environment

You might need to remove a few setting from `~/.emacs.d/emacs[VERSION].el`. For example, you need to remove the settings of doxymacs if you didn't copy the [doxyemacs](https://doxymacs.sourceforge.net/) into `/usr/local/share/emacs/site-lisp/doxymacs`.
