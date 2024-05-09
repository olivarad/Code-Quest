# Install build-essential
yes | sudo apt install build-essential

# Install wxWidgets dependencies
echo $'Installing wxWidgets dependencies\n'
sleep 1
yes | sudo apt-get install libgtk-3-dev
echo ""

# Path to wxWidgets archive and directory
wxWidgetsArchive="./Libraries/wxWidgets-3.2.4.tar.bz2"
wxWidgetsFolder="./Libraries/wxWidgets-3.2.4/"

# Path to libraries directory
librariesDirectory="./Libraries"

# Extract 3rd party libraries
if [ ! -d "$wxWidgetsFolder" ]; then
    echo $'Folder: $wxWidgetsFolder not found, extracting library\n'
    sleep 1
    tar -xvjf "$wxWidgetsArchive" -C "$librariesDirectory"
    ehco ""
else
    echo $'Folder: $wxWidgetsFolder found, skipping extraction\n'
    sleep 1
fi

# Create build directory for wxWidgets
mkdir -p ./Libraries/wxWidgets-3.2.4/wxWidgetsBuild
cd ./Libraries/wxWidgets-3.2.4/wxWidgetsBuild

# Configure wxWidgets
echo $'Configuring wxWidgets\n'
sleep 1
../configure

# Build wxWidgets
echo $'Building wxWidgets\n'
sleep 1
make

# Install wxWidgets
echo $'Installing wxWidgets\n'
sleep 1
sudo make install

# Cleanup
echo $'Cleaning up\n'
sleep 1
make clean

# Rebuild library cache
echo $'Rebuilding library cache\n'
sleep 1
sudo ldconfig

