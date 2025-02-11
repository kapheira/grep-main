# GREP Command in Linux

This project is a reimplementation of the classic **grep** command in C. The "mygrep" command allows users to search for specific patterns in files or text inputs.

## 🚀 Features
- **Pattern Searching:** Search for specific words or regular expressions (regex).
- **Multiple File Support:** Search through multiple files simultaneously.
- **High Performance:** Optimized C code for fast searching.
- **Simple and Lightweight:** Easy command-line usage.

## 📦 Installation
Clone the repository to your local machine:

```sh
git clone https://github.com/CihanC1/Grep_Command.git
cd Grep_Command
```

### Requirements
- Linux or macOS operating system
- C compiler (gcc or clang)
- CMake and Make
- Shell command-line access

### Build with CMake:
```sh
mkdir build
cd build
cmake ..
make
```

### Build with Makefile:
```sh
make
```

## 📊 Usage
Once compiled, you can run the "mygrep" command as follows:

```sh
./mygrep [options] <pattern> <file_path> 
```

### Available Flags:
- `-i` : Ignore case sensitivity (case-insensitive search).
- `-v` : Display lines that do not match the pattern (inverse search).
- `-c` : Return the count of matching lines.
- `-n` : Display line numbers for matched results.
- `-r` : Recursively search within directories.

### Examples:

- **Simple Search:**
  ```sh
  ./mygrep "error" test_data.txt
  ```
  Searches for the word "error" in the `test_data.txt` file.

- **Case-Insensitive Search:**
  ```sh
  ./mygrep -i "Warning" test_data.txt
  ```
  Searches for "Warning", "WARNING", or "warning" variations.

- **Inverse Search:**
  ```sh
  ./mygrep -v "failure" test_data.txt
  ```
  Displays lines that do **not** contain "failure".

- **Search with Line Numbers:**
  ```sh
  ./mygrep -n "success" test_data.txt
  ```
  Shows the line numbers where "success" appears.

- **Recursive Search in Directories:**
  ```sh
  ./mygrep -r "TODO" ./project
  ```
  Searches for "TODO" inside the `project` directory.

