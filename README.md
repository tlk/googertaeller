# googertæller for macos

inspired by [bert's googerteller](https://github.com/berthubert/googerteller/) this is a macos implementation that does not require a compiler and does not require external dependencies to be installed.

it beeps when there is network traffic to google.


```
$ ./tæller.sh google.txt
Password:
.........................................................................................
$

```

it is asking for password because tcpdump needs to run as super user.

stop the thing with <kbd>ctrl+c</kbd>
