# harden-server

### Update Server
        sudo apt update && sudo apt dist-upgrade

### Personalize Host
        nvim /etc/hostname
        nvim /etc/hosts
        reboot

### Create working user
        adduser <username>
        usermod -a -G sudo <username>
        su <username>

### Upload SSH keys
        ssh-copy-id user@remote_host
        or
        copy id_rsa.pub in ~/.ssh

### 
