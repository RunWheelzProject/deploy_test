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
                //dockerImage = docker.build("docker_demo:${env.BUILD_NUMBER}")
                bat "docker build -t mdits/jenkins_test:latest . "
            }
        }
        
         stage("Deploy depoloy to hub"){
            steps{
               bat "docker login -u mdits -p mdits@2022"
               bat "docker push mdits/jenkins_test:latest"
            }
        }
        
    }
}
