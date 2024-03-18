#!/bin/bash

modules_dir="./modules"

# Check if the directory modules exists
if [ ! -d "$modules_dir" ]; then
  echo "Directory $modules_dir not found!"
  exit 1
fi

# Function to execute commands in a subdirectory
execute_in_directory() {
  local dir="$1"
  cd "$dir" || exit

  echo "Current directory: $(pwd)"
  rm "pubspec.lock" || true
  flutter clean
  flutter pub get || { echo "failed flutter pub get in $dir"; exit 1; }
  dart run build_runner build --delete-conflicting-outputs

  cd - || exit
}

# First, execute commands in the directory bcc_core, if it exists
if [ -d "$modules_dir/sdugram_core" ]; then
  execute_in_directory "$modules_dir/sdugram_core"
fi

# Now execute commands in all other subdirectories, excluding bcc_core
for dir in $modules_dir/*; do
  if [ -d "$dir" ] && [ "$dir" != "$modules_dir/sdugram_core" ]; then
    execute_in_directory "$dir"
  fi
done

# Finally, execute commands in the current directory by calling the function with the current directory as an argument
execute_in_directory "$(pwd)"
