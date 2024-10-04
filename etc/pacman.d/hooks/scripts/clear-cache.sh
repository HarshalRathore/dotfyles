#!/usr/bin/env bash

# Colors
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)
RESET=$(tput sgr0)
BLUE=$(tput setaf 4)
PINK=$(tput setaf 5)
BOLD=$(tput bold)
LIGHT_BLUE=$(tput setaf 6)

# Run paccache to remove old packages and capture the output
output=$(sudo paccache --keep=3 --verbose --remove 2>&1)

# Start the cleanup process
if [[ "$output" == *"removed"* ]]; then
    echo -e "${GREEN}==>${RESET} ${BLUE}Cleaning up old packages from cache...${RESET}"

    # Extract and print removed packages
    echo "$output" | grep "removed" | while read -r line; do
        # Extract package name and version without extra characters
        package_info=$(echo "$line" | grep -o '[^/]\+-[0-9].*\.pkg\.tar\.zst' | sed 's/\.pkg\.tar\.zst//')  # Get package name and version
        if [ ! -z "$package_info" ]; then
            printf "    ${LIGHT_BLUE}%s${RESET}\n" "$package_info"
        fi
    done

    # Extract disk space saved and number of packages removed
    disk_space_saved=$(echo "$output" | grep "disk space saved:")
    packages_removed=$(echo "$output" | grep -o '[0-9]* packages removed')

    # Print the finished message correctly
    echo -e "${GREEN}==>${BLUE}finished: ${YELLOW}${packages_removed} ${BLUE}packages removed${RESET} ${YELLOW}(${BLUE}disk space saved:${RESET} ${GREEN}${BOLD}${disk_space_saved#*: }${RESET}${YELLOW})${RESET}"
else
    echo -e "${GREEN}==>${BLUE}Cleaning up old packages from cache...${RESET}"
    echo -e "${GREEN}==>${PINK}No packages to remove. Cache is already clean!${RESET}"
fi

