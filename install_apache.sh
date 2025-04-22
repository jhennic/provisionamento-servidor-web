#!/bin/bash

# Atualiza os pacotes
sudo apt-get update -y

# Instala o Apache
sudo apt-get install apache2 -y

# Habilita o Apache para iniciar com o sistema
sudo systemctl enable apache2

# Inicia o Apache
sudo systemctl start apache2

# Verifica se o Apache está funcionando
if systemctl status apache2 | grep "active (running)" > /dev/null; then
    echo "Apache foi instalado e está rodando com sucesso!"
else
    echo "Falha ao iniciar o Apache."
fi

# Exibe a versão do Apache
apache2 -v
