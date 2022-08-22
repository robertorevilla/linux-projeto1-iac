#!/bin/bash

echo "Criando Usuários do Sistema..."

useradd guest10 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Pass123)
passwd guest10 -e

useradd guest11 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Pass123)
passwd guest11 -e

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Pass123)
passwd guest12 -e

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Pass123)
passwd guest13 -e

echo "Script Finalizado!!!"

# A partir da versão 3.0 do openssl a opção "-crypt" foi removida.
# Agora você pode escolher qualquer uma das opções como "-1" "-5" "-6".
# A opção default agora virou a "-1" (MD5).
# A versão que está no meu sistema é: OpenSSL 3.0.2 15 Mar 2022.
# Por esse motivo não utilizei o "-crypt" no meu script.
