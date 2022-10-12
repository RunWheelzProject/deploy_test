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
        stage('Run Docker container on remote hosts') {
             
            steps {
                bat "docker run -d -p 8003:8086 mdits/jenkins_test:0.0.1"
            }
        }
       
    }
}
