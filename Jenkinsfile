pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Clone repository') { 
            steps { 
                script{
                checkout scm
                }
            }
        }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("mdits/jenkins_test:0.0.1")
                 app.push()
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
       
    }
}
