#!/bin/bash

echo "Criando Diretórios do Sistema..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos do Sistema..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários do Sistema..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_ADM
passwd maria -e

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 Pass123) -G GRP_SEC
passwd rogerio -e

echo "Criando Permissões no Sistema..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script Finalizado!!!"

# A partir da versão 3.0 do openssl a opção "-crypt" foi removida.
# Agora você pode escolher qualquer uma das opções como "-1" "-5" "-6".
# A opção default agora virou a "-1" (MD5).
# A versão que está no meu sistema é: OpenSSL 3.0.2 15 Mar 2022.
# Por esse motivo não utilizei o "-crypt" no meu script.