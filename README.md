# Blimp Boards Install Guide

Install instructions and configuration files for Blimp Boards.

If you're looking for business class hosting and support, contact us: hello@getblimp.com.

The following instructions will automatically download and provision a virtual machine for you to begin hacking on Blimp Boards with Vagrant.

## Screenshot
![Blimp Boards Screenshot](http://i.imgur.com/MpRpto7.jpg)

## Getting Started

1. Install Git: [http://git-scm.com/downloads](http://git-scm.com/downloads) (or [GitHub for Windows](http://windows.github.com/) if you want a GUI)
2. Install VirtualBox: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Download]s)
3. Install Vagrant: [http://www.vagrantup.com](http://www.vagrantup.com) (We require Vagrant 1.1.2+ or later)
4. Open a terminal
5. Clone the project: `git clone https://github.com/getblimp/boards.git`
6. Enter the project directory: `cd boards`

## Using Vagrant for development

When you're ready to start working, boot the VM:

```
vagrant up
```

Note: The first time you do this, it will take a while as it downloads the VM image and installs it.

Once the machine has booted up, you can shell into it by typing:

```
vagrant ssh
```

###	Shutting down the VM

```
vagrant halt
```


## TO-DO

- Dockerize port for production deployments


