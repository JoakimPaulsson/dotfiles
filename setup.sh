configdir="$HOME/.config"
thisdir=$(pwd)

# check .config folder and create if necessary
[ ! -d "$configdir" ] && mkdir -p "$configdir"

# nvim files
# check nvim folder and create if necessary
[ ! -d "$configdir/nvim" ] && mkdir -p "$configdir/nvim"
[ -f "$configdir/nvim/init.lua" ] && rm "$configdir/nvim/init.lua"
ln -s "$thisdir/nvim/init.lua" "$configdir/nvim/init.lua"

[ -d "$configdir/nvim/lua" ] && rm -rf "$configdir/nvim/lua" && ln -s "$thisdir/nvim/lua" "$configdir/nvim/lua"

[ -d "$configdir/nvim/plugin" ] && rm -rf "$configdir/nvim/plugin" && ln -s "$thisdir/nvim/plugin" "$configdir/nvim/plugin"

# alacritty files
# check alacritty folder and create if necessary
[ ! -d "$configdir/alacritty" ] && mkdir -p "$configdir/alacritty"
[ -f "$configdir/alacritty/alacritty.yml" ] && rm "$configdir/alacritty/alacritty.yml"
ln -s "$thisdir/alacritty.yml" "$configdir/alacritty/alacritty.yml"

# tmux files
[ -f "$HOME/.tmux.conf" ] && rm "$HOME/.tmux.conf"
ln -s "$thisdir/.tmux.conf" "$HOME/.tmux.conf"
