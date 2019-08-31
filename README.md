# Stack Overflow Workshop
This respository contains the exercises used in the DC011612 Stack Overflow Workshop.
Slides can be found here: https://docs.google.com/presentation/d/10Ngu_jSHXmYqT1i163hIjhzeTlxP7rW0xn9wLoPq1ng/edit?usp=sharing

The challenges of this workshop have been designed to showcase the exploitation techniques and mitigations used on Linux. Because the goal is not to address the finding of vulnerabilities, the bugs are always very obvious. Additonally,  

# Installation
## Virtual machine image
This workshop has been developed to work on the Kali 2019.2 virtual machine images available on the [Offensive Security website](https://www.offensive-security.com/kali-linux-vm-vmware-virtualbox-image-download/). Please download and change the root password before continuing. Other Linux distributions are of course possible, but if you use those, you're on your own if you encounter issues.

## Clone this repository
The following commands will download this repository on your machine, set-up a low-privileged user and the file permissions, and install some extra tools:
``` bash
cd /opt
git clone https://github.com/DavidDeLille/stack-overflow-workshop
cd stack-overflow-workshop
./setup-user-and-perms.sh
./tools.sh
```

# Usage
The exercises of the workshop have been organised in folders. The following progression is recommended if you want to complete the challenges in oder of assending difficulty:

* Basic
* ...

For each exercise, the goal is to run the challenge binary as a low-privileged user and attain code execution as root. This is possible because the challenge binaries are configured as setuid root by one of the setup scripts.

For some binaries, ASLR (an exploitation) should be enabled. A script has been included to enable/disable this system-wide setting on Linux. Please remember to re-enable ASLR after you've finished the challenges.

``` bash
cd /opt/stack-overflow-workshop/
./toggle-ASLR.sh
```

Don't forget to check out the cheatsheet which contains a bunch of useful commands.

# Prerequisite knowledge
TODO

# Other resources
TODO
