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

# Run CMake for wxWidgets
echo $'Running CMake for wxWidgets\n'
sleep 1
cd ./Libraries/wxWidgets-3.2.4/wxWidgetsBuild
cmake ..
cmake --build ./

# Return to root of Code-Quest
cd ../../..

# Create Build directory if it does not already exist
mkdir -p Build

# Run CMake for Code-Quest
echo $'Running CMake for Code-Quest\n'
sleep 1
cmake -S ./CMake -B ./Build
cmake --build ./Build