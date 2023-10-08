pipeline {
    agent any

    stages {
        stage ('Install PostgreSQL'){
            steps {
                echo "Installing PostgreSQL..."
                sh 'java --version'
                sh 'ls'
                sh 'pwd'
                
                // Instalação do PostgreSQL em sistemas baseados em Debian (Ubuntu)
                sh 'sudo apt-get update'
                sh 'sudo apt-get install -y postgresql postgresql-contrib'
                
                // Iniciar o PostgreSQL
                sh 'sudo service postgresql start'
            }
        }

        stage ('Build'){
            steps {
                echo "Building..."
                sh 'mvn --version'
                sh 'ls'
                sh 'pwd'
                // Adicione comandos relacionados ao Maven para compilação e construção do projeto
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
