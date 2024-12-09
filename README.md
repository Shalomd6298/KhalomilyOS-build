# KhalomilyOS

![KhalomilyOS Logo](screenshots/logo.png)

KhalomilyOS is a simple operating system written in assembly language. This README provides details on the project structure and steps to build and run the source code.

## Project Structure

```bash
KhalomilyOS/
├── build-linux.sh
├── test-linux.sh
├── disk_images/
│   └── <image-to-build>
├── programs/
│   ├── intro.bas
├── source/
│   ├── bootloader.asm
│   ├── kernel.asm
│   ├── features/
├── README.md
```

## Create a VM instance
For this project, Digital Ocean VM is used.
A 'Basic' droplet with Regular CPU, 1vCPU is used to build the app.
OS: Ubuntu 24.04 LTS
Estimated costs: 4$/month
Pricing and specs: https://www.digitalocean.com/pricing/droplets#basic-droplets

Configure SSH locally and on Digital Ocean to access the VM.
(Optional) Create a config file inside the ~/.ssh folder to manage multiple SSH keys locally.

Use below code and replace values
Host <alias name>
    HostName <ip address>
    User root (by default)
    IdentityFile <private ssh key path>

### Source code transfer
cd into the directory where the source code zip resides on the local machine.
run the command, replaced with actual values scp /<filename>.zip <vm-name>:/root/ 

After running the command, you will prompted with entering the passphrase configured.
Cross check whether file was copied to VM inside the root directory.

To unzip the zip file and access the source code, you will need to manually install unzip on the VM. ap install unzip
Run unzip <filename.zip>


### Key Files and Directories

- `build-linux.sh`: Script to build the MikeOS bootloader, kernel, and programs on Linux.
- `disk_images/`: Directory to store disk images.
- `programs/`: Directory containing example programs.
- `source/`: Directory containing the source code for the bootloader, kernel, and features.

## Building MikeOS

To build MikeOS, follow these steps:

1. Ensure you have NASM and other required tools installed.
2. Run the build script as the root user:


## Build Script Details
The build-linux.sh script performs the following steps:

`sh build-linux.sh`

Checks if the user is root.
Creates a new floppy image if it doesn't exist.
Assembles the bootloader using NASM.
Assembles the MikeOS kernel using NASM.
Adds the bootloader to the floppy image.
Copies the kernel and programs to the floppy image.
Unmounts the loopback floppy. [optional]


## Running KhalomilyOS
After building, you can run KhalomilyOS using an emulator like QEMU:

`qemu-system-i386 -drive format=raw,file=disk_images/mikeos.flp,index=0,if=floppy -nographic`


## Source Code Overview
### Kernel
The kernel source code is located in source/kernel.asm. It includes various features such as CLI, disk operations, keyboard handling, math functions, and more.

### Bootloader
The bootloader source code is located in source/bootload/bootload.asm.

## Features
Additional features are included in the source/features/ directory. Each feature is implemented in its own assembly file, such as source/features/cli.asm, source/features/disk.asm, etc.

## Credits: 

- Mike Saunders
- Prof. Ahmed Banafa
- Sige Wang
- Khatantuul Batbold