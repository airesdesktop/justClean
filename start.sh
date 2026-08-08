#!/bin/bash
# justClean | version a0.1

end_program() {
    echo "Ending program..."
}

echo "Removing bash history..."

if [ -f "/home/$USER/.bash_history" ]; then

  sudo rm /home/$USER/.bash_history

else

  echo "File does not exist! Ignoring..."

fi

echo "Removing temporary Bambu Studio files..."

sudo rm -rf /home/$USER/Downloads/.bambuDownloads
sudo mkdir -p /home/$USER/Downloads/.bambuDownloads

end_program