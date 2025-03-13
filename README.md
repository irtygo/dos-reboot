# MS-DOS Reboot Command

This is a simple reboot command for MS-DOS. It allows you to reboot your PC directly from the command line. If you'd like to add new rebooting methods or contribute in other ways, feel free to contribute to this repo!

## Features

- Attempts to reboot the system using I/O port 0x64.
- Written in assembly language for MS-DOS.
- Easy to compile using NASM.

## Building

To build the program, you only need [NASM](https://www.nasm.us/), the Netwide Assembler. If you don't have it installed, you can download and install it from the link provided.

Once you have NASM installed, simply clone the repository and run `make` to assemble the program.

### Steps to build:

1. Clone the repository:
    ```bash
    git clone https://github.com/irtygo/dos-reboot.git
    cd dos-reboot
    ```

2. Build the program using `make`:
    ```bash
    make
    ```

    This will generate the `reboot.com` file.

## Usage under DOS

Once the program is built, you can use it in a DOS environment (or DOSBox) by running the following command:

```bash
reboot.com
