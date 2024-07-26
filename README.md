# Battlestate Games launcher Script

## Description

This Bash script is designed to manage logs and facilitate launching the Battlestate Games Launcher. It provides functionalities for creating, clearing, and managing log files, as well as prompting users for input path when opened for the first time. The script is designed to help regulate the clustering and "memory leak" issues that **Escape from Tarkov**, a Battlestate Games product, has been suffering from for years.

## Features

- Save log files' metadata to **C:/bsg_cache/logs.txt** for future reference.
- Prompt users for input path, saving it to **C:\bsg_cache\input.txt** to avoid repetition of asking user's input.
- Clear log directories.
- Automate log management tasks.
- Facilitate the start of the Battlestate Games Launcher after clearing logs.

## Prerequisites

- Bash shell environment (Linux, macOS, or Windows with Bash installed).
- Battlestate Games Launcher.

## How it works:
    1) Sets a default path for logs in (C:/bsg_cache) and creates the directory if it doesn't already exist.
    2) Check if a file named input.txt exists in the logs directory. If not, it creates an empty input.txt file.
    3) Reads the contents of input.txt to determine the parent path of the Battlestate Games folder. If input.txt is empty, it prompts the user to enter the parent path and stores it in input.txt.
    4) Constructs the paths for the logs directory and the game launcher executable.
    5) Loops through each file in the logs directory, appends the file name to C:/bsg_cache/logs.txt, clears the log files from the directory.
    6) Finally, it executes the Battlestate Games launcher.exe

    - If the logs directory does not exist, it prints an error message indicating that the directory does not exist.
1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/battlestate-games-script.git
