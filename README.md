# linux_config


Packages for 18.04:
```
sudo apt-get install openssh-server rsync bash-completion automake libevent-dev
```

Install packages (14.04)
vim git libevent1 libncurses5-dev dconf-tools

Update git:
```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

Error message:
```
GDBus.Error:org.freedesktop.DBus.Error.ServiceUnknown: The name org.gnome.SettingsDaemon was not provided by any .service files
```

```
sudo apt-get install gnome-settings-daemon
```
