SOURCE_FILES=".bashrc .rvm/scripts/rvm .bashrc.this "
for f in $SOURCE_FILES; do
    [[ -e "$HOME/$f" ]] && . "$HOME/$f"
done
