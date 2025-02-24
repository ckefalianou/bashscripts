# README

This repository contains a customized `.bashrc` file with various configurations and functions to enhance the command-line experience. Below is a detailed explanation of the contents and functionalities included in the file.

## Contents

### Directory Navigation

- **Change Directory to Desktop**: Automatically changes the directory to `~/Desktop` upon opening a new terminal session. **You can change it to the path that suits your needs**. 

### History Management

- **HISTCONTROL**: Avoids duplicate lines or lines starting with space in the history.
- **HISTSIZE**: Sets the history size to 1000.
- **HISTFILESIZE**: Sets the history file size to 2000.
- **shopt -s histappend**: Appends to the history file instead of overwriting it.

### Terminal Settings

- **shopt -s checkwinsize**: Checks the window size after each command and updates the values of `LINES` and `COLUMNS`.
- **PS1**: Sets a fancy prompt with color support if available.
- **xterm title**: Sets the terminal title to `user@host:dir` if using xterm or rxvt.

### Aliases

- **ls**: Enables color support for `ls`.
- **grep**: Enables color support for `grep`, `fgrep`, and `egrep`.
- **ll**: Alias for `ls -alF`.
- **la**: Alias for `ls -A`.
- **l**: Alias for `ls -CF`.
- **alert**: Alias for sending a notification for long-running commands.
- **mkcd**: Creates a directory and changes into it.
- **sail**: Runs the Sail script if it exists, otherwise runs `vendor/bin/sail`.
- **snr**: Alias for `sail npm run`.
- **opt:clear**: Alias for `sail artisan optimize:clear`.
- **checkout**: Lists local Git branches and allows the user to switch branches by selecting a number.
- **back**: Changes the directory to a specified number of levels up.

### Functions

- **parse_git_branch**: Parses the current Git branch and displays it in the prompt.

### SSH Agent

- **ssh-agent**: Starts the SSH agent.
- **ssh-add**: Adds the SSH key `~/.ssh/id_ecdsa` to the SSH agent.

### Programmable Completion

- Enables programmable completion features if not already enabled.

## Usage

To use this `.bashrc` file, copy its contents to your `~/.bashrc` file or source it directly:

```sh
source /path/to/this/file
