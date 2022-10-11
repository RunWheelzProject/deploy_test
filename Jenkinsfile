pipeline{
    agent any
    stages{
        stage("Maven Build"){
            steps{
                bat 'mvn clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t mdits/jenkins_test:1 .'
            }
        }
    }
}
