pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'ls'
            }
        }
        stage('Test') {
            steps {
                echo 'python .\\test.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'echo "Deploying...."'
            }
        }
    }
}
