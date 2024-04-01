# Battlestate Games launcher Script

## Description

This Bash script is designed to manage logs and facilitate launching the Battlestate Games Launcher. It provides functionalities for creating, clearing, and managing log files, as well as prompting users for input path when opened for the first time. The script is designed to help regulate the clustering and "memory leak" issues that **Escape from Tarkov**, a Battlestate Games product, has been suffering from for years.

## Features

- Save log files' metadata to **C:/bsg_cache/logs.txt** for future reference.
- Prompt users for input path, saving it to **C:\bsg_cache\input.txt** to avoid asking each time the script is launched.
- Clear log directories.
- Automate log management tasks.
- Facilitate the start of the Battlestate Games Launcher after clearing logs.

## Prerequisites

- Bash shell environment (Linux, macOS, or Windows with Bash installed).
- Battlestate Games Launcher.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/battlestate-games-script.git
