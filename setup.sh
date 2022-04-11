configdir="$HOME/.config"
thisdir=$(pwd)

# check .config folder and create if necessary
[ ! -d "$configdir" ] && mkdir -p "$configdir"

# nvim files
# check nvim folder and create if necessary
[ ! -d "$configdir/nvim" ] && mkdir -p "$configdir/nvim"
[ -f "$configdir/nvim/init.vim" ] && rm "$configdir/nvim/init.vim"
ln -s "$thisdir/init.vim" "$configdir/nvim/init.vim"

[ ! -d "$configdir/nvim/lua" ] && mkdir -p "$configdir/nvim/lua"
[ -f "$configdir/nvim/lua/plugins.lua" ] && rm "$configdir/nvim/lua/plugins.lua"
ln -s "$thisdir/plugins.lua" "$configdir/nvim/lua/plugins.lua"

# alacritty files
# check alacritty folder and create if necessary
[ ! -d "$configdir/alacritty" ] && mkdir -p "$configdir/alacritty"
[ -f "$configdir/alacritty/alacritty.yml" ] && rm "$configdir/alacritty/alacritty.yml"
ln -s "$thisdir/alacritty.yml" "$configdir/alacritty/alacritty.yml"

# tmux files
[ -f "$HOME/.tmux.conf" ] && rm "$HOME/.tmux.conf"
ln -s "$thisdir/.tmux.conf" "$HOME/.tmux.conf"
