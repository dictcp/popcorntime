# popcorntime

```
docker run -ti --rm --entrypoint "/bin/bash" jerivas/popcorntime /config > popcorntime.sh
chmod +x popcorntime.sh
sed -i 's/\r//' popcorntime.sh
./popcorntime.sh
```

You may also need this if you encounter error like `Gtk: cannot open display: unix:0`
```
xhost local:root
```
ref: https://github.com/jessfraz/dockerfiles/issues/4
