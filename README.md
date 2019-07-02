# Moduler Install

Installer for Orbital 2017 application written in Linux bash.

## Dependencies
* node v6.11.0
* npm v3.10.10

## System Requirements
The script has been tested to run on a 1 GB DigitalOcean droplet. Any less RAM and the install will not proceed smoothly.

If you do not wish to use DigitalOcean, you may install the application on any KVM-based or Xen-based Virtual Private Server installed with vanilla Ubuntu 16.04. OpenVZ or LXC/LXD container-based VPS is not recommended.

## Install
On a clean Ubuntu 16.04 system, run the following commands as root in your desired installation directory:

```
wget https://git.katliyang.com/darklyght/Orbital-2017-Install/raw/master/moduler-install.sh
```
```
chmod +x moduler-install.sh
```
```
bash moduler-install.sh
```
The script will automatically run the application after installation.

You may visit the external IP address (http://your-external-ip/) of your server to utilise Moduler.

If you require an Ubuntu system to test the script on, do consider using my [DigitalOcean referral link](https://m.do.co/c/c9881f486a87). It is greatly appreciated and will support future development.

## Usage
Run the following commands in `your-installation directory/modules_app` to run the application:
```
screen -dmS horizon bash -c 'hz serve --dev --bind all'
```
```
screen -dmS quasar bash -c 'PORT=80 quasar dev'
```
The application will utilise two separate screen sessions, one for Horizon and one for Quasar.

You may visit the external IP address (http://your-external-ip/) of your server to utilise Moduler.

## Demo
You may test out a demo of the application at http://orbital.darklyght.com if you do not wish to install Moduler on your own server.

## Disclaimer
This application was made for a student project and is not ready for production use under any cirumstances. Quasar and Horizon are run under development mode. Use at your own risk.
