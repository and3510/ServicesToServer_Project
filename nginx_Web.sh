#!/bin/bash

# Esse script instala e configura o Nginx no Ubuntu 22.04.5

set -e  # Para interromper o script em caso de erro

# Atualiza os pacotes
echo "Atualizando pacotes..."
sudo apt update && sudo apt upgrade -y

# Instala o Nginx
echo "Instalando o Nginx..."
sudo apt install -y nginx

# Inicia e habilita o Nginx para iniciar automaticamente no boot
echo "Iniciando o Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

# Verifica o status do Nginx
echo "Verificando status do Nginx..."
sudo systemctl status nginx

# Cria uma página HTML de teste
echo "Criando uma página HTML de teste..."
echo "<html>
<head><title>Servidor Web Nginx</title></head>
<body><h1>Bem-vindo ao servidor Nginx!</h1></body>
</html>" | sudo tee /var/www/html/index.html > /dev/null

# Configura o firewall para permitir tráfego HTTP (porta 80)
echo "Configurando o firewall para permitir tráfego HTTP..."
sudo ufw allow 'Nginx HTTP'

# Reinicia o Nginx para aplicar as alterações
echo "Reiniciando o Nginx..."
sudo systemctl restart nginx

# Exibe a mensagem final
echo "Servidor web com Nginx configurado com sucesso!"
echo "Abra seu navegador e acesse http://<IP_DO_SERVIDOR> para ver a página de teste."
