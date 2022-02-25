# Spotify Playlist Buddy (BASH FILE)

A script to run the [Spotify Buddy](https://github.com/StefonSimmons/spotify_playlist_buddy) program from the terminal.

## Setup

>  copy and paste one of the following scripts into your shell configuration file (.bashrc or .zshrc)
>
> There are slight differences in the syntax for Bash vs Zsh. 

- To figure out what shell you have, Run:

```bash
echo $SHELL
```
- Assign your absolute path to the <code>run_it.py</code> file directory to the DIR variable as directed in the script

> Example

```bash
DIR=~/terminal-apps/spotify-app
```

## Script

```bash
# FOR BASH
function spotify (){
    DIR=#<absolute path to folder of run_it module>
    if [ "$1" == 'cp' ]; then
        echo "Creating $2..."
        python $DIR/run_it.py $1 $2 $3
    elif [ "$1" == "s" ]; then
        echo "Searching for $2..."
        python $DIR/run_it.py $1 $2
    elif [ "$1" == "list" ]; then
        echo "Getting Playlists..."
        python $DIR/run_it.py $1
    elif [ "$1" == "play" ] || [ "$1" == "pause" ]; then
        python $DIR/run_it.py $1
    fi
}

# =========== OR =============


# FOR ZSH
function spotify (){
  DIR=#<absolute path to folder of run_it module>
  if [[ "$1" == 'cp' ]]; then
    echo "Creating $2..."
    python $DIR/run_it.py $1 $2 $3
  elif [[ "$1" == "s" ]]; then
    echo "Searching for $2..."
    python $DIR/run_it.py $1 $2
  elif [[ "$1" == "list" ]]; then
    echo "Getting Playlists..."
    python $DIR/run_it.py $1
  elif [[ "$1" == "play" ]] || [[ "$1" == "pause" ]]; then
    python $DIR/run_it.py $1
  fi
}

```