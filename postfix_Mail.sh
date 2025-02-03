#!/bin/bash

# Esse script instala e configura o Postfix no Ubuntu 22.04.5

set -e  # Para interromper o script em caso de erro

# Instala os pacotes necessários
echo "Instalando pacotes necessários..."
sudo apt update && sudo apt install -y postfix mailutils ca-certificates mutt

# Faz backup do arquivo de configuração existente
POSTFIX_CONF="/etc/postfix/main.cf"
BACKUP_CONF="/etc/postfix/main.cf.bk"

echo "Fazendo backup do arquivo de configuração existente..."
sudo cp "$POSTFIX_CONF" "$BACKUP_CONF"

# Substitui a configuração do Postfix
echo "Substituindo configuração do Postfix..."
sudo tee "$POSTFIX_CONF" > /dev/null <<EOL
# SMTP relayhost
relayhost = [smtp.gmail.com]:587

# TLS settings
smtp_tls_loglevel = 1
smtp_use_tls = yes
smtpd_tls_received_header = yes

# TLS
smtp_sasl_auth_enable = yes
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_sasl_security_options = noanonymous
smtp_sasl_tls_security_options = noanonymous
EOL

# Solicita credenciais do usuário de forma segura
read -rp "Digite seu e-mail do Gmail: " EMAIL
read -rsp "Digite sua senha do Gmail (será oculta): " SENHA
echo ""

# Cria o arquivo de senhas para autenticação
SASL_PASSWD="/etc/postfix/sasl_passwd"
echo "[smtp.gmail.com]:587 $EMAIL:$SENHA" | sudo tee "$SASL_PASSWD" > /dev/null

# Define permissões seguras no arquivo de senhas
sudo chmod 600 "$SASL_PASSWD"

# Atualiza o banco de senhas do Postfix
sudo postmap "$POSTFIX_CONF"

sudo postmap "$SASL_PASSWD"

# Reinicia o Postfix para aplicar as mudanças
echo "Reiniciando o Postfix..."

sudo service postfix restart


echo "Configuração concluída com sucesso!"

# teste

echo 'postfix funcionando com sucesso' | mutt -s 'Teste de conexao' "$EMAIL"
