# tm.zsh
#
# Simplifies creating new tmux sessions, attaching to existing sessions,
# switching between sessions, and listing active sessions.
#

function tm() {
  # If no session name arg provided, display usage and list active sessions
  [[ -z "$1" ]] && {
    echo "Usage: tm <session>"
      SESSIONS=$(tmux ls -F "* #{session_name}" 2>/dev/null)
      if [[ -n $SESSIONS ]]; then
        echo "Active tmux sessions:"
        echo "$SESSIONS"
      else
        echo "No tmux server running"
      fi
      return
    }

  # Either switch client or attach session depending on whether command
  # is run from within a tmux session
  if [[ -n "$TMUX" ]]; then
    change="switch-client"
  else
    change="attach-session"
  fi

  # Determine whether a session with the provided name already exists
  $(tmux has -t="$1" 2> /dev/null)
  TMUX_SESSION_EXIST_CHECK="$?"

  # If session with provided name doesn't already exist, create it
  # (but wait for next command to attach)
  if [[ "$TMUX_SESSION_EXIST_CHECK" != 0 ]]; then
    tmux new -d -s "$1"
  fi

  # Attach to session with provided name
  tmux -u $change -t "$1"
}

