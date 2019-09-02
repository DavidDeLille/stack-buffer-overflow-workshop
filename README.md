# Stack Buffer Overflow Workshop
This respository contains the exercises used in the DC011612 Stack Buffer Overflow Workshop.
Accompanying slides can be found here: https://docs.google.com/presentation/d/10Ngu_jSHXmYqT1i163hIjhzeTlxP7rW0xn9wLoPq1ng/edit?usp=sharing

The challenges of this workshop have been designed to showcase the exploitation techniques and mitigations used on Linux. Because the goal is not to address the finding of vulnerabilities, the bugs are always very obvious. For each exercise, the goal is to run the challenge binary as a low-privileged user and attain code execution as root. To enable this, the challenge binaries are configured as setuid root by one of the setup scripts.

# Installation
## Virtual machine image
This workshop has been developed to work on the Kali 2019.2 virtual machine images available on the [Offensive Security website](https://www.offensive-security.com/kali-linux-vm-vmware-virtualbox-image-download/). Please download and change the root password before continuing. Other Linux distributions are of course possible, but if you use those, you're on your own if you encounter issues.

## Clone this repository
The following commands will download this repository on your machine, set-up a low-privileged user and the file permissions, and install some extra tools:
``` bash
cd /opt
git clone https://github.com/DavidDeLille/stack-buffer-overflow-workshop
cd stack-buffer-overflow-workshop
./setup-user-and-perms.sh
./tools.sh
```

# Usage
The exercises of the workshop have been organised in folders. The following progression is recommended if you want to complete the challenges in order of assending difficulty:

* Basic
* TODO

Don't forget to check out the cheatsheet which contains a bunch of useful commands.

# Exploit mitigations
## ASLR
ASLR is an exploit mitigation that randomises the addresses used during execution. For most challenge binaries in this workshop, it should be disabled. The following command disables ASLR temporarily on a system-wide basis:
``` bash
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
```
Re-enable it like so:
```bash
echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
```

# Prerequisite knowledge
TODO

# Other resources
TODO
