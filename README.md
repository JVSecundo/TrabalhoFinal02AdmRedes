## TrabalhoFinal02AdmRedes

# SERVIDOR DHCP

O DHCP (Dynamic Host Configuration Protocol) é um protocolo de rede que permite que os dispositivos obtenham automaticamente um endereço IP e outras configurações de rede quando se conectam a uma rede. 
Imagem utilizada no docker:
https://hub.docker.com/r/networkboot/dhcpd/

Ao utilizar o script para criar o conteiner, automáticamente a configuração será feita.

## Testar o servidor
Crie uma nova máquina na rede e utilize os comandos "sudo dhclient -r" liberar o endereço IP atual "sudo dhclient" solicitar um novo endereço IP


# SERVIDOR DNS

Um servidor DNS (Domain Name System) é responsável por converter nomes de domínio em endereços IP. Atua como um diretório que traduz nomes de domínio em endereços IP, permitindo que os usuários acessem sites e serviços na Internet usando nomes de fácil memorização em vez de números complexos de IP
Imagem utilizada no docker: 
https://hub.docker.com/r/ubuntu/bind9

Ao utilizar o script para criar o conteiner, automáticamente a configuração será feita.

## Testar o servidor

Utilize o comando dig example.com, já o dominio usado para criar o servidor foi o example.com.

# SERVIDOR APACHE

O servidor APACHE HTTP Server, é um servidor web de código aberto utilizado para hospedar sites na Internet.
Imagem utilizada no docker: 
https://hub.docker.com/_/httpd
Crie um arquivo de index.html, semelhante ao arquivo de na pasta web.
Ao utilizar o script para criar o conteiner, automáticamente a configuração será feita.

## Testar o servidor

Abra o navegador nesta pagina "http://192.168.0.10:8080"

# SERVIDOR FTP

O servidor FTP é um protocolo de rede utilizado para transferir arquivos entre um cliente e um servidor.
Imagem utilizada no docker:
https://hub.docker.com/r/fauria/vsftpd

## Testar o servidor

Abra o terminal e digite ftp admin@192.168.0.10, usuário: admin e senha: admin.

# SERVIDOR NFS

O NFS, é um protocolo de compartilhamento de arquivos que permite que um sistema operacional acesse arquivos em um servidor remoto como se estivessem localmente armazenados.
Imagem utilizada no docker:
https://hub.docker.com/r/itsthenetwork/nfs-server-alpine

## Testar o servidor
Crie uma pasta para o compartilhamento, usando comando "mkdir /mnt/nfs", monte o compartilhamento na pasta, "mount -v 192.168.0.10:/nfsshare /mnt/nfs", crie um arquivo para testar, "docker exec -it server-nfs touch /nfsshare/teste.txt"