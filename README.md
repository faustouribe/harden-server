# harden-server

### Update Server
        sudo apt update && sudo apt dist-upgrade

### Personalize Host
        nvim /etc/hostname
        nvim /etc/hosts
        reboot

### Create Working User
        adduser <username>
        usermod -a -G sudo <username>
        su <username>

### Upload SSH keys
        ssh-copy-id <username>@remote_host
        - or -
        copy id_rsa.pub in ~/.ssh & check permisssions:
        .ssh dir    (Directory)         700
        id_rsa.pub  (Public key)        644
        id_rsa      (Private key)       600

### Disable SSH Using Password, Disable Root Access, and Change Port
        sudo nvim /etc/ssh/sshd_config
        
        Port XXXX
        PermitRootLogin no
        PubkeyAuthentication yes
        PasswordAuthentication no
        
        
                
