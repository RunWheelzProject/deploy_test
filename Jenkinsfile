pipeline{
    agent any
    stages{
        stage("Maven Build"){
            steps{
                bat 'mvn clean package'
            }
        }
        
        stage("Build docker"){
            steps{
                dockerImage = dockerImage = docker.build("docker_demo:${env.BUILD_NUMBER}")
            }
        }
        
        
        stage("Deploy docker"){
            steps{
                bat "docker stop docker_demo || true && docker rm docker_demo || true"
                bat "docker run --name docker_demo -d -p 8081:8081 docker_demo:${env.BUILD_NUMBER}"
            }
        }
        
    }
}
