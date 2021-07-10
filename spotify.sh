# FOR BASH
function spotify (){
    DIR=#<absolute path to folder of create_playlist module>
    if [ "$1" == 'cp' ]; then
        echo "Creating $2..."
        python $DIR/create_playlist.py $1 $2 $3
    elif [ "$1" == "s" ]; then
        echo "Searching for $2..."
        python $DIR/create_playlist.py $1 $2
    elif [ "$1" == "list" ]; then
        echo "Getting Playlists..."
        python $DIR/create_playlist.py $1
    elif [ "$1" == "play" ] || [ "$1" == "pause" ]; then
        python $DIR/create_playlist.py $1
    fi
}

# =========== OR =============


# FOR ZSH
function spotify (){
  DIR=#<absolute path to folder of create_playlist module>
  if [[ "$1" == 'cp' ]]; then
    echo "Creating $2..."
    python $DIR/create_playlist.py $1 $2 $3
  elif [[ "$1" == "s" ]]; then
    echo "Searching for $2..."
    python $DIR/create_playlist.py $1 $2
  elif [[ "$1" == "list" ]]; then
    echo "Getting Playlists..."
    python $DIR/create_playlist.py $1
  elif [[ "$1" == "play" ]] || [[ "$1" == "pause" ]]; then
    python $DIR/create_playlist.py $1
  fi
}
