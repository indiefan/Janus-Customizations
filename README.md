# Janus Customizations

Local customizations used for my personal Janus install.

## Installation

To install Janus-Customizations, simply run the following command (any
existing local customizations will be backed up prior to installation)

```bash
$ curl -Lo- https://raw.github.com/indiefan/Janus-Customizations/master/bootstrap.sh | bash
```

## Changes

Local customizations include:

### Global
* Set color theme to (included) ryderbeans
* Set font as Bitstream Vera
* Map Ctrl-Shift-o to mirror NerdTree
* Change tab width to 4 spaces and retain actual tabs
* Added Cmd-Enter and Cmd-Shift-Enter for jumping to the next line while editing (with shift adds a semi-colon to the end of the existing line)
* Moves swp and temp files to ~/.vimtmp
* Adds shortcuts for changing splits. For instance, Ctrl-w followed by h can now be performed with simply Ctrl-h, even when in insert mode
* Only auto complete braces
* Maintain visual block selection after indenting with < or >
* Keep all splits the same size
* Use arrows in NerdTree, but don't open on click

### gvim (e.g. MacVim)
* Always show the tab bar
* Don't highlihgt tabs
