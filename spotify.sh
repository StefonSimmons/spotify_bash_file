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
