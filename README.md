# C Hexdump Utility

This repository contains a simple, lightweight, and dependency-free rewrite of the classic `hexdump` command-line utility. Written in C, it is designed to display the contents of a file in a canonical hexadecimal and ASCII format.

The output is formatted with the offset, 16 hexadecimal bytes per line, and the corresponding printable ASCII characters.

-----

## Features

  * **Standard Hexdump Format**: Displays data with an 8-digit hexadecimal offset, followed by hexadecimal byte values, and a final ASCII character representation.
  * **Clear Readability**: Bytes are grouped, and a separator is placed between the 8th and 9th bytes on each line for easier reading.
  * **Safe and Robust**: Includes checks for file existence, read permissions, and file size to prevent errors. The maximum readable file size is capped at 500 KB.
  * **Portable Code**: Written in standard C11 with `-Wall` and `-pedantic` flags to ensure high-quality, portable code.
  * **Simple Build Process**: A `Makefile` is included for easy one-step compilation.

-----

## Building the Project

### Prerequisites

  * A C compiler (e.g., GCC or Clang)
  * `make`

### Compilation

Clone the repository and run `make` in the project's root directory to compile the source code.

```bash
# Compile the program
make
```

This will create an executable file named `hexdump` in the current directory.

To remove the compiled binary and clean the directory, use:

```bash
# Clean the build artifacts
make clean
```

-----

## Usage

Run the program from the command line, providing the path to the file you wish to inspect as the single argument.

### Syntax

```bash
./hexdump <file_path>
```

### Error Handling

The program provides clear error messages if something goes wrong. For example, if the file does not exist:

```bash
./hexdump non_existent_file.bin
```

```
[ERROR]: File `non_existent_file.bin` does not exist!
```
