# tm.zsh
Tmux shortcut plugin for zsh.  Simplifies creating new tmux sessions, attaching to existing sessions, switching between sessions, and listing active sessions.

## Usage

`tm`
Shows usage, and lists active tmux sessions.

`tm <session>`
* If session with given name does not exist, creates session and attaches to it.
* If session with given name exists and shell is not in a tmux session, attaches to the named session.
* If already in a tmux session, switches to the named session (creates session if it doesn't exist).

This plugin enables autocomplete for session names to make usage even easier.


## Installation
First, if you do not use [tmux](https://github.com/tmux/tmux), this plugin will not be useful.

Next, source tm.zsh in your zsh file.

Personally I use [Antibody](https://getantibody.github.io/) to load zsh plugins.  Add `kjhaber/tm.zsh` to your plugin list, then reload zsh.


