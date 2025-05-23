# tm.zsh

This is a [tmux](https://github.com/tmux/tmux) shortcut plugin for
[zsh](https://zsh.sourceforge.io/). It simplifies creating new tmux sessions,
attaching to existing sessions, switching between sessions, and listing active
sessions.

## Usage

`tm`

- Shows usage message, and lists any active tmux sessions

`tm <session>`

- Create session with given name if it doesn't already exist
- Attach to session with given name if it already exists
- Also works if tmux session is already attached

This plugin enables zsh autocomplete for session names to make usage even easier.

## Installation

If you use a zsh plugin manager, install `kjhaber/tm.zsh` following your plugin
manager's installation process.  (I personally use [zcomet](https://github.com/agkozak/zcomet) but there are plenty of zsh plugin managers out there.)

If you don't use a zsh plugin manager, download and source `tm.zsh` in your
~/.zshrc config. To enable zsh autocompletion, put the `_tm` file in a
directory in your zsh
[$fpath](https://zsh.sourceforge.io/Doc/Release/Functions.html).

## License

MIT
