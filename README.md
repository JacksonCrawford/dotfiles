# dotfiles
My personal AwesomeWM Config

![desktop](screenshots/desktop.png)

This is my pretty simple Awesome setup, very minimal as far as features but I have all the essential stuff in the top bar.

It's an original colorscheme that I call "ethereal," I'm currently working on an nvim theme to match it, but I'm pretty happy with the colors so far.

This is done with the stable branch of Awesome. I have only tested it on Fedora, but it should work on every distro that Awesome is available for!

Some of the widgets have been adapted from the ArcoLinux default AwesomeWM config, but I am working on phasing them out. 

## Dependencies

In Fedora, simply paste this line into the terminal to download the dependencies that I use:
```sudo dnf install light rofi ```

For other distro's just replace ```dnf``` with whatever package manager they use, like ```apt``` for Ubuntu or ```yay -S``` for Arch.

## Fonts

I use [Icomoon](https://icomoon.io/) (Icomoon) for the top bar icons and [Microns](https://www.s-ings.com/projects/microns-icon-font/) for the taglist (workspaces list/desktop list/whatever!) dots. Then I use [Futura](https://fonts.adobe.com/fonts/futura-pt) as my system font, but this is not set in the dotfiles and can be set to whatever you want with a program like lxappearance.
