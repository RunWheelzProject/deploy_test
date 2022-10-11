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
        
        stage("connect to AWS EC2 via SSH"){
            steps {
			    sshagent(credentials: ['ssh-server']) {
			      bat '''
			          [ -d ~/.ssh ] || mkdir ~/.ssh && chmod 0700 ~/.ssh
			          ssh-keyscan -t rsa,dsa ec2-43-205-239-149.ap-south-1.compute.amazonaws.com >> ~/.ssh/known_hosts
			          ssh ec2-user@ec2-43-205-239-149.ap-south-1.compute.amazonaws.com ...
			      '''
			    }
			}
        }
        
        
        
    }
}
