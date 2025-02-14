# Para verificar o nome do arquivo de configuração do netplan, use o comando abaixo.
ls /etc/netplan/
-------------------------------------
# Para editar o arquivo através do editor de texto nano, use o comando abaixo.
sudo nano /etc/netplan/50-cloud-init.yaml
-------------------------------------
# Para mudar as configurações internas, comente a configuração anterior e cole a configuração abaixo.

network:
  version: 2
  ethernets:
    ens33:  # Substitua "ens33" pelo nome da sua interface de rede
      dhcp4: no  # Desativa o DHCP para IPv4
      dhcp6: yes  # Ativa o DHCP para IPv6
      accept-ra: true  # Aceita anúncios de roteador (SLAAC)
      nameservers:
        addresses:
          - "2001:4860:4860::8888"  # Google DNS IPv6
          - "2001:4860:4860::8844"
-------------------------------------
# Para salvar, dê "Ctrl+X", depois "y" e "Enter". E para aplicar de fato, use o comando abaixo.
sudo netplan apply
-------------------------------------
# Para verificar os IPs, use o comando abaixo.
ip a
-------------------------------------
# E por último, faça o teste de PING usando o comando abaixo.
ping6 -c 4 google.com
