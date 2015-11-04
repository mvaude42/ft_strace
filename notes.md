# ft_strace

By default, strace prints the strings that the program passes to and from the system (filenames, data read and written, and so on).
It cuts of the strings at 32 characters.

## Subject

### Requirements

* Under a VM with linux kernel > 3.4 (ex Ubuntu 14.10).
* Executable should call ft_strace.
* Code in C.
* Need a Makefile with usual rules.
* Handle well the errors (No Seg Fault possible).

### Forbidden

* PTRACE_TRACEME: alternatively, one process may comence tracing another process using PTRACE_ATTACH or PTRACE_SEIZE
* PTRACE_ATTACH

### Bonuses

* option -c
* PATH management

## Options

* ```-p```: can trace a program already running with its pid.

### Time

* ```-tt```: tells when each syscall happened in microsecond.
* ```-t```: tells when each syscall happened in second.
* ```-T```: tells how long each syscall took start to finish.

### Data

* ```-s```: precise the string length that strace can show (default 32 char);
* ```-e [read=-write=]```: determine which action and which fd strace has to focus on to print full strings.

### Filtering the Output

* ```-e trace=[file-process-signal-ipc-desc-custom]```: trace only syscall types specified.

### Child Processes

* ```-f```: make strace "follow forks" and trace child processes, too, as soon as they're made.
* ```-ff```: make strace write each process's trace into a separate file.

## Need infos

* How to find syscall name from number
