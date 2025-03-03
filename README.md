sudo apt install live-build
sudo lb config --bootappend-live "boot=live components live-config.no_kernel_upgrade=1"
sudo lb build
