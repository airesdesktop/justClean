#!/bin/bash

# |||||||||||||||||||||||||||| justClean | version a0.1 |||||||||||||||||||||||||||||||||
# =======================================================================================
# just a silly stupid and small (3 characteristics!) .sh program
# for cleaning MY (my specificly) desktop (NixOS) setup (I'm using to many parenthesis).
#
# (btw, you'll notice I pretty-fied this code too much for it's good... I just like being organized uhh, leave me alone.)
# =======================================================================================

end_program() {

    echo "Ending program..."
    
}

clean_bash_history() {

    echo "Removing bash history..."

    if [ -f "/home/$USER/.bash_history" ];
    then sudo rm /home/$USER/.bash_history
    else echo "Bash history file does not exist! Ignoring..."
    fi

}

clean_bambu_downloads() {

    echo "Removing temporary Bambu Studio files..."

    sudo rm -rf /home/$USER/Downloads/.bambuDownloads
    sudo mkdir -p /home/$USER/Downloads/.bambuDownloads

}

clean_tmp_folder() {

    echo "Removing temporary files older than 7 days (a week)..."

    sudo find /tmp -type f -atime +7 -delete

}

clean_thumbs_folder() {
    
    echo "Removing .thumbs content..."

    rm -rf ~/.thumbs/*

}

clean_cache_folder() {

    echo "Cleaning .cache content older that 7 days (a week)..."

    find ~/.cache/ -depth -type f -atime +7
    
}

automatic_mode() {

    echo "Starting automatic_mode cleaning chain..."

    clean_bambu_downloads
    clean_bash_history
    clean_tmp_folder
    end_program

}

automatic_mode