pipeline{
    agent any
    stages{
        stage("SCM Checkout"){
            steps{
            git 'https://github.com/RunWheelzProject/deploy_test.git'
            }
        }
        stage("Maven Build"){
            steps{
                bat 'mvn clean package'
            }
        }
    }
}