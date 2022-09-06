# noise-generator

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that does not require a compiler and does not require external dependencies to run.

it simply makes some noise whenever there is network activity to google.


```
$ ./run.sh
Password:
.........................................................................................
$

```

it is asking for password because tcpdump needs to run as super user.

stop the thing with <kbd>ctrl+c</kbd>


## notes

it creates (and removes!) a fifo-file called "my_fifo" to take advantage of the `script -F` flushing mechanism.

[`script -F`](https://www.unix.com/man-page/mojave/1/SCRIPT/) is used in the run.sh file to flush output after each write from tcpdump.

please let me know if you are aware of a less convoluted way to do this without using a compiler.
