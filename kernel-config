Para redefinir as configurações do IP no Kernel, use os comandos abaixo.

-------------------------------------
# Ir para o arquivo de configuração
sudo nano /etc/sysctl.conf
-------------------------------------
# Para a configuração, copie e cole o código abaixo completo

# Desativa IPv4
net.ipv4.conf.all.disable_ipv4 = 1
net.ipv4.conf.default.disable_ipv4 = 1

# Habilita IPv6
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.default.disable_ipv6 = 0
-------------------------------------
# Para aplicar as configurações aperte "Ctrl+X" depois "y" e "Enter", e para aplicar as alterações, use o link abaixo.
sudo sysctl -p
