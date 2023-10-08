pipeline {
    agent any

    stages {
        stage ('Build'){
            steps {
                echo "Building..."
                sh 'java --version'
                sh 'ls'
                sh 'pwd'
                // Não é necessário mvn --version nesta etapa, pois não estamos usando o Maven

                // Instalar o PostgreSQL, se necessário (dependendo do sistema operacional)
                // Por exemplo, para sistemas baseados em Debian (Ubuntu):
                // sh 'sudo apt-get install postgresql postgresql-contrib'

                // Iniciar o PostgreSQL
                sh 'sudo service postgresql start'
            }
        }

        stage ('Test'){
            steps {
                echo 'Testing'
                sh '''
                    # Execute seus testes que envolvem o PostgreSQL aqui
                    # Certifique-se de configurar a conexão com o banco de dados em seu aplicativo ou script de teste
                   '''
                   archiveArtifacts './Projeto_S107/Projeto_BD_POO/target/classes'
            }

        }

        stage ('Notifications'){
            steps {
                echo 'Notifications'
                sh '''
                    # Adicione comandos relacionados às notificações
                    cd scripts/
                    chmod 777 *
                    ./jenkins.sh
                   '''
            }

        }
    }
}
