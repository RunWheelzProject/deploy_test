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
        stage("Build docker"){
            steps{
                //dockerImage = docker.build("docker_demo:${env.BUILD_NUMBER}")
                bat "docker build -t mdits/jenkins_test:latest . "
            }
        }
        
         stage("Deploy image to docker to hub"){
            steps{
               bat "docker login -u mdits -p mdits@2022"
               bat "docker push mdits/jenkins_test:latest"
            }
        }
        stage('Run Docker container on remote hosts') {
             
            steps {
            	bat "docker run -p 8015:8081 mdits/jenkins:0.0.3"
                bat "docker -H ssh://ec2-user@ec2-43-205-239-149.ap-south-1.compute.amazonaws.com run -d -p 80:8086 mdits/jenkins_test:0.0.1"
            }
        }
       
    }
}
