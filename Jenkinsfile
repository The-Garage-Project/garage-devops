pipeline {
    agent any

    stages {
        stage('Checkout DevOps') {
            steps {
                git branch:  'main', url: 'https://github.com/The-Garage-Project/garage-devops.git'
            }
        }

        stage('Execute Ansible Playbook') {
            steps {
                sh 'ansible-playbook playbook.yaml'
                }
            }
    }

    post {
        success {
            echo 'Build successful!'
        }

        failure {
            echo 'Build failed!'
        }
    }
}