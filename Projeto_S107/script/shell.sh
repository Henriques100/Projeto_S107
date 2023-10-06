ls
cd Projeto-BD-POO
ls
echo "Instalando as dependências do JAVA e PostgreSQL"
sudo apt-get install mailutils
echo "Fim da instalacao"
echo "Mandando e-mail com mail do linux" | mail -s "a subject" ${EMAIL_LIST}
# posso fazer o que eu quiser aqui