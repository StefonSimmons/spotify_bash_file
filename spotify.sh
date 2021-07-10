function spotify (){
    if [ "$1" == 'cp' ]; then
        echo "Creating $2..."
        DIR=#<absolute path to folder of create_playlist module>
        python $DIR/create_playlist.py $1 $2 $3
    elif [ "$1" == "s" ]; then
        echo "Searching for $2..."
        DIR=#<absolute path to folder of create_playlist module>
        python $DIR/create_playlist.py $1 $2
    elif [ "$1" == "list" ]; then
        echo "Getting Playlists..."
        DIR=#<absolute path to folder of create_playlist module>
        python $DIR/create_playlist.py $1
    elif [ "$1" == "play" ] || [ "$1" == "pause" ]; then
        DIR=#<absolute path to folder of create_playlist module>
        python $DIR/create_playlist.py $1
    fi
}
