# Install Docker on Debian 11
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
&& curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
&& echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
&& sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io && sudo usermod -aG docker $USER \
# Install Extip
sudo wget https://github.com/arsham/figurine/releases/download/v1.3.0/figurine_linux_amd64_v1.3.0.tar.gz && tar -xvf https://github.com/arsham/figurine/releases/download/v1.3.0/figurine_linux_amd64_v1.3.0.tar.gz \
&& cd deploy && sudo mv figurine /usr/bin/ && sudo chmod +x /usr/bin/figurine \
&& sudo cp extip /usr/bin/ && sudo chmod +x /usr/bin/extip && echo "export TERM=xterm" >> ~/.bashrc && echo "export PATH='/home/mrfox/.local/bin:$PATH'" >> ~/.bashrc && echo "extip" >> ~/.bashrc
