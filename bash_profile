for f in ".bashrc .bashrc.this .rvm/scripts/rvm .profile"; do
    [[ -s "$HOME/$f" ]] && source "$HOME/$f"
done
