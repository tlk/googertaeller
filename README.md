# noise-generator

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that does not require a compiler and does not require external dependencies to be installed.

it simply makes a beep whenever there is network activity with google.


```
$ ./run.sh
Password:
.........................................................................................
$

```

it is asking for password because tcpdump needs to run as super user.

stop the thing with <kbd>ctrl+c</kbd>


## technical notes

it creates (and removes!) a fifo-file called "my_fifo" to take advantage of the `script -F` flushing mechanism.

[`script -F`](https://www.unix.com/man-page/mojave/1/SCRIPT/) is used in the run.sh file to flush output after each write from tcpdump.

please let me know if you have any suggestions for less complicated (and compiler-free) ways to deal with buffer issues :-)
