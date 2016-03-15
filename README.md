# Matt's dotfiles
Files and configurations I use to get a basic environment up and running.

## ``SolarizedDark.itermcolors`` and ``SolarizedDark.terminal``
**Location**: Import into terminal

I like the [solarized](http://ethanschoonover.com/solarized) colorscheme. These
two files can be imported into iTerm2 and OS X terminal respectively to add the
colorscheme.

## ``backup.sh`` and ``rsync-exclude``
**Location**: Anywhere and ``~/.rsync-exclude``

Instead of OS X's Time Machine, I use a simple rsync script for backups. The
script (over)writes the latest copy of every file to my external drive. It never
deletes. Files in ``rsync-exclude`` are not backed up.

## ``gitignore_global``
**Location**: ``~/.gitignore_global``

Ignore pesky temp files. GitHub has [instructions](https://goo.gl/nxBA0E) for
configuring git to respect these, and a much more comprehensive global ignore
file than mine.

## ``ssh_config``
**Location**: ``~/.ssh/config``

Basic example of an ssh config file. Allows you to ``ssh caen`` instead of
``ssh mterwil@login-course.engin.umich.edu``.

## ``tmux.conf``
**Location**: ``~/.tmux.conf``

Tmux (a terminal multiplexer) is nice to manage multiple windows/sessions. The
functionality provided is similar to opening tabs or split screens on your
terminal emulator (e.g. OS X Terminal, iTerm2). I use tmux because:

1. It's quicker to navigate with keyboard
2. Tmux is quite robust
3. It's available on most linux machines (not the CAEN servers we ssh into,
   unfortunately)
4. Persistent sessions are nice for both backgrounded jobs/tasks and working on
   several different things (e.g. classes)

## ``vim`` and ``vimrc``
**Location**: ``~/.vim``, ``~/.vimrc``

My vimrc includes basic configurations that I find useful, but you should
add/change/remove things to make it your own. The individual lines are fairly
well commented, but here is breakdown of plugins I've included and shortcuts in
my vimrc that I use regularly.

Included plugins: (Managed with [Pathogen](https://goo.gl/b43TZR))

| Plugin                             | Description
| ---------------------------------- | -------------------------------
| [Airline](https://goo.gl/4oDWgQ)   | Status and tab line
| [Commentary](https://goo.gl/s650p5)| Comment out stuff
| [Fugitive](https://goo.gl/pPAc8B)  | Git wrapper
| [Goyo](https://goo.gl/jvpkse)      | Distraction-free writing
| [Sensible](https://goo.gl/qUASYt)  | Some basic default settings
| [Snytastic](https://goo.gl/7P1UiU) | Syntax checking

Brief shortcut explanation: (My leader is comma)

| Keys    | Description
| ------- | -------------------------------
| ,.      | Move to previous buffer
| ,/      | Move to next buffer
| ,e      | Edit vimrc
| ,w      | Write (equiv to :w)
| ,pp     | Paste from system clipboard
| ,ss     | Enable/disable spellcheck
| ,wc     | Word count
| ,ws     | Remove trailing whitespace
| ,ww     | Write and exit insert mode
| ,yy     | Yank to system clipboard
| ,zz     | Enter distraction free writing

Note: I use the solarized colorscheme. My vimrc defaults to a reduced color
palette for portability, so after you import the colorscheme into your terminal
emulator, ``touch ~/.vim/solarized`` to tell vim to load the full version.

## Other tools
- For Macs, install [homebrew](http://brew.sh/).
- [Vagrant](https://www.vagrantup.com/) is nice to create quick headless VMs.
