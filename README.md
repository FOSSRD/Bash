# Bash Config

This is a collection of bash configuration scripts that aim to provide a more powerful and user-friendly shell experience. It includes a set of aliases, functions, and a custom prompt that will make your time in the terminal more productive and enjoyable.

## Features

- **Custom Prompt:** A clean and informative prompt that displays the exit status of the last command, your username, hostname, and the current working directory. It also includes a random emoji for a bit of fun.
- **Aliases:** A collection of useful aliases for common commands, such as `ll` for `ls -alF` and `byebye` for a safer `shutdown now`.
- **Functions:** A set of powerful functions that extend the functionality of your shell, including:
    - `extract`: Extracts any type of compressed file.
    - `mdpdf`: Converts a markdown file to a PDF presentation using pandoc.
    - `metadata`: Displays all metadata for a file.
    - `edit`: Opens a file for editing using a fuzzy finder.
    - `remindme`: Sets a reminder that will notify you after a specified time.
- **History Management:** The history is configured to ignore duplicate commands and commands that start with a space. It also saves a large number of commands to the history file.
- **XDG Base Directory Support:** The configuration follows the XDG Base Directory Specification to keep your home directory clean.

## Prerequisites

- **fzf:** A command-line fuzzy finder.
- **bash-completion:** Programmable completion for bash.
- **notify-send:** A program to send desktop notifications.
- **pandoc:** A universal document converter.
- **exiftool:** A platform-independent Perl library plus a command-line application for reading, writing and editing meta information in a wide variety of files.

## Installation

1.  Clone this repository:
    ```bash
    git clone https://github.com/your-username/your-repo.git
    ```
2.  Run the installation script:
    ```bash
    cd your-repo
    sudo ./bashrc.sh
    ```
3.  Restart your shell or source the new `.bashrc` file:
    ```bash
    source ~/.bashrc
    ```

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
