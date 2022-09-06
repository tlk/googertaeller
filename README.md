# noise-generator

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that does not require a compiler and does not require external dependencies to run.

it simply makes some noise whenever there is network activity to google.


```
$ ./run.sh
Password:
.........................................................................................
$

```

## notes

stop the thing with <kbd>ctrl+c</kbd>

[`script -F`](https://www.unix.com/man-page/mojave/1/SCRIPT/) is used in the run.sh script to flush output after each write from tcpdump.

it is asking for password because tcpdump needs to run as super user.
