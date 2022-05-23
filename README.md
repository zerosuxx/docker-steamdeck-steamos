# docker-steamdeck-steamos

## change boot order
```
$ sudo efibootmgr
$ sudo efibootmgr -o 000x,000x
$ sudo efibootmgr -b 000x -A # remove active state
```
