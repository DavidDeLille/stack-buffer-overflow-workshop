# Cheat Sheet
This document contains a list of useful commands and instructions for exploitation / reverse engineering on Linux.

## General
Open a file in Sublime Text:
```bash
subl <file>
```
Show binary protections:
```bash
rabin2 -I <binary>
```
Change to low-privileged user:
```bash
su <user>
```

# GDB / Pwndbg
| Action | Command |
| ------ | ------- |
| Show help | ```help <command>``` |
| Open a binary in GDB | ```gdb <binary>``` |
| Enable Intel-syntax | ```set disassembly-flavor intel```|
| Set a breakpoint at address 0x00001234 | ```b *0x00001234 ```|
| Start debugging | ``` r <program arguments> ```|
| Continue executing until next breakpoint| ```c``` |
| Execute 1 more instruction (step into)| ```si 1``` |
| Execute 1 more instruction (step over)| ```ni 1``` |
| Examine the top 32-byte words of the stack as hexadecimals | ```x/32xw $esp``` |
| Inspect registers | ```ir``` |
| Disassemble main function | ```disass main``` |

## Feed python command output to stdin
```
r < <(python -c "print '\x41'*32")
r <<< $(python -c "print '\x41'*32")
```
