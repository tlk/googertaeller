# noise-generator

make some noise whenever there is network activity to google.

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that should be functional on modern mac computers:

```
$ ./run.sh
Password:
.........................................................................................
$

```

## notes

stop the thing with <kbd>ctrl+c</kbd>

`script -F` to flush output after each write

`sudo` because it calls tcpdump
