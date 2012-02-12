function die()
{
	echo "${@}"
	exit 1
}

# Add <strong>.old</strong> to any existing Janus Customization file file in the home directory
for i in $HOME/.janus-customizations $HOME/.janus $HOME/.vimrc.after $HOME/.gvimrc.after; do
	if [[ ( -e $i ) || ( -h $i ) ]]; then
		echo "${i} has been renamed to ${i}.old"
		mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
	fi
done

# Clone Janus-Customizations into .janus
git clone https://github.com/indiefan/Janus-Customizations.git $HOME/.janus-customizations \
	|| die "Could not clone the repository to ${HOME}/.janus-customizations"

# Create symbolic links to local config files
ln -s $HOME/.janus-customizations/.janus $HOME/.janus
ln -s $HOME/.janus-customizations/.gvimrc.after $HOME/.gvimrc.after
ln -s $HOME/.janus-customizations/.vimrc.after $HOME/.vimrc.after
