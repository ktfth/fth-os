# FTH OS

## Description

A Debian based system with some dev tools to work without need to configure everything from scratch

## Building

```sh
sudo apt install live-build
```

```sh
sudo lb config --bootappend-live "boot=live components live-config.no_kernel_upgrade=1"
```

```sh
sudo lb build
```
