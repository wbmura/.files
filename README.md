<h2 align="center"> ━━━━━━  ❖  ━━━━━━ </h2>
<p/>

<h2></h2>

<!-- INFORMATION -->
### ❖ Information <img alt="" align="right" src="https://badges.pufler.dev/visits/janleigh/dotfiles?style=for-the-badge&color=91e6b1&logoColor=white&labelColor=0B0F10"/>

   <img src=".github/rice.png" alt="Rice Preview" align="right" width="400px">

   Thanks for dropping by! This is my personal repository of my dotfiles.

   The [setup section](#-setup) will guide you through a step-by-step installation process.

   Here are more information about my setup:

   - **WM:** [bspwm](https://github.com/baskerville/bspwm)
   - **OS:** [Arch Linux](https://archlinux.org/)
   - **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
   - **Shell:** [zsh](https://www.zsh.org/)
   - **Panel:** [eww](https://github.com/elkowar/eww)
   - **Compositor:** [picom](https://github.com/yshui/picom)
   - **Editor:** [neovim](https://github.com/neovim/neovim)
   - **Browser:** [firefox](https://www.mozilla.org/en-US/firefox/)
   - **File Manager:** [thunar](https://github.com/xfce-mirror/thunar)
   - **Application Launcher:** [rofi](https://github.com/davatorium/rofi)

<h2></h2>

<!-- SETUP -->
### ❖ Setup

   > This is step-by-step how to install these dotfiles. Just [R.T.F.M](https://en.wikipedia.org/wiki/RTFM).

   > First of all, this repository contains submodules. Ensure they are updated before installing.
   ```sh
    $ git clone --recurse-submodules https://github.com/wbmura/.files.git
    $ cd dotfiles && git submodule update --remote --merge
   ```

### ❖ Installation

   > After cloning the repository, install the necessary dependencies to replicate by setup.

   <details open>
   <summary><strong>Arch Linux (and other Arch-based distributions)</strong></summary>

   > Assuming your **AUR Helper** is [paru](https://github.com/Morganamilo/paru).

   ```sh
    $ paru -S bspwm sxhkd rofi neovim alacritty viewnior \
    picom brightnessctl playerctl feh maim jq xclip  \
    imagemagick dunst i3lock-color xdo giph 
   ```

   </details>

   <br>

   > Then after the dependencies are installed, copy the files to it's respective folders.

   <details open>
   <summary><strong>Config and Binaries</strong></summary>

   ```sh
    $ mkdir -p $HOME/.config/ && cp -r ./cfg/* $HOME/.config/
    $ mkdir -p $HOME/.local/bin/ && cp -r ./bin/* $HOME/.local/bin/

    # To make tabbed and chwb2 to work, you must move it to /usr/local/bin.
    $ mv $HOME/.local/bin/usr/* /usr/local/bin
   ```

   </details>

   <details open>
   <summary><strong>Fonts</strong></summary>

   ```sh
    $ cp -r ./etc/fonts/* $HOME/.local/share/fonts
   ```

   </details>

   <details>
   <summary><strong>Others</strong></summary>

   ```sh
    # Copy wallpaper.
    $ mkdir -p $HOME/Pictures/walls/personal && cp -r ./etc/walls/personal/personal-6.jpg $HOME/Pictures/walls/personal
   ```

   </details>

   <br>

   > Once finished copying the files, you might want to finalize the changes to your system.

   ```sh
    # Rebuilds the font cache
    $ fc-cache -v
   ```

   <br>

   > Lastly, log out from your current desktop session and log in into bspwm.

<h2></h2>

### ❖ Miscellaneous

   - **Elkowar's Wacky Widgets** 
      > If you're **NOT** using a monitor with a 1366x768 resolution, you might want to change the `x` and `y` values of the widgets on the config.

   - **GTK Theme**
      > You can find the custom GTK theme [here](https://github.com/janleigh/gtk3). You can then apply it by changing the `gtk-theme-name` to `kizus_phocus` on your GTK3 config.

   - **Icon Theme**
      > You can install [this](https://github.com/zayronxio/Zafiro-icons/) icon theme that suits the GTK theme.

   - **Firefox Custom CSS <kbd>Suggested</kbd>**
      <details>
      <summary><strong>See</strong></summary>

      > You can install the custom Firefox CSS by first enabling `toolkit.legacyUserProfileCustomizations.stylesheets` in `about:config` and move the contents of [`etc/firefox-css`](etc/firefox-css) to `$HOME/.mozilla/firefox/*.default-release/chrome`.

      </details>

   - **Replacement Commands <kbd>Suggested</kbd>**
      <details>
      <summary><strong>See</strong></summary>

      > Assuming you're also using my [zsh](https://www.zsh.org/), you might also want to install some additional dependencies to make some commands work.

      - `ls` ➜ [`exa`](https://github.com/ogham/exa)
      - `cat` ➜ [`bat`](https://github.com/sharkdp/bat)
      - `df` ➜ [`duf`](https://github.com/muesli/duf)

      </details>

### ❖ Acknowledgements

   - **Inspiration**
      - [owl4ce](https://github.com/owl4ce) for the README style.

   - **Contributors**
      - [flyingcakes85](https://github.com/flyingcakes85) for the **OLD** 1920x1080 eww config. 

         <a href="https://github.com/janleigh/dotfiles/graphs/contributors">
            <img src="https://contrib.rocks/image?repo=janleigh/dotfiles" />
         </a>
