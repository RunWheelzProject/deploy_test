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
               bat "docker login -u mdits -p officework"
               bat "docker push mdits/jenkins_test:0.0.6"
            }
        }
//         stage('Run Docker container on remote hosts') {
//             steps {
//                 // bat 'docker rm run1'
//             	// bat "docker run -p 8018:8081 --name run8 mdits/jenkins_test:0.0.6"
//                 // bat "docker -H ssh:\\ec2-user@43.205.239.149 run -d -p 80:8081 mdits/jenkins_test:0.0.6"
//                 // bat "docker -i ssh://ec2-user@43.205.239.149 run -d -p 80:8081 mdits/jenkins_test:0.0.6"
//                 // bat 'ssh -i ssh_server "docker run -p 8019:8081 --name run9 mdits/jenkins_test:0.0.6"'
//                 script {
//                      sshagent(credentials : ['ssh_server']) {
//                         sh "echo pwd"
//                         // sh 'ps -ef'
//                         sh "docker -H ssh://ec2-user@43.205.239.149 run -d -p 8004:8081 mdits/jenkins_test:0.0.6"
//                     }
//                  }
//             }
//         }
       
    }
}
