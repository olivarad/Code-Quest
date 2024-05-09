# Create Build directory if it does not already exist
mkdir -p Build

# Run CMake for Code-Quest
echo $'Running CMake for Code-Quest\n'
sleep 1
cmake -S ./CMake -B ./Build
cmake --build ./Build