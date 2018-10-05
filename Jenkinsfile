pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                powershell 'ls'
            }
        }
        stage('Test') {
            steps {
                powershell 'python .\\test.py'
            }
        }
        stage('Deploy') {
            steps {
                powershell 'echo "Deploying...."'
            }
        }
    }
}