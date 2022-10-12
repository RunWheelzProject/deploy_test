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
        stage('build image') { 
            steps { 
                script{
                bat 'mvn clean package'
                }
            }
        }
        stage("Build docker"){
            steps{
                //dockerImage = docker.build("docker_demo:${env.BUILD_NUMBER}")
                bat "docker build -t mdits/jenkins_test:0.0.6 . "
            }
        }
         stage("Deploy image to docker to hub"){
            steps{
               bat "docker login -u mdits -p mdits@2022"
               bat "docker push mdits/jenkins_test:0.0.6"
            }
        }
        stage('Run Docker container on remote hosts') {
            steps {
                //bat 'docker rm run1'
            	bat "docker run -p 8016:8081 --name run6 mdits/jenkins_test:0.0.6"
                bat "docker -H ssh://ec2-user@ec2-43-205-239-149.ap-south-1.compute.amazonaws.com run -d -p 80:8086 mdits/jenkins_test:0.0.1"
            }
        }
       
    }
}
