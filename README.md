My Dot Files for my custom neovim setup.

This set up requires the neovim nightly release

This can be installed with the script included below:

```sh
#!/bin/bash
cd "/path/to/store/script"
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
```

Store the above in a script somewhere on your computer (maybe in a folder called scripts?)
called nightly-update.sh

For more details about how to setup neovim in a similar way I recommend watching
Chris@Machine's neovim from scratch series found at the link below:

https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ
