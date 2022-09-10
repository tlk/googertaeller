# noise-generator

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that does not require a compiler and does not require external dependencies to be installed.

it beeps whenever there is network activity with google.


```
$ ./noise-generator.sh google.cfg
Password:
.........................................................................................
$

```

it is asking for password because tcpdump needs to run as super user.

stop the thing with <kbd>ctrl+c</kbd>
