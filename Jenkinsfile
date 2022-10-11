pipeline {
    agent any

    environment {
        DOCKER_REPO = "taskagile/vuejs.spring-boot.mysql"
        DOCKER_CREDENTIAL = "dockerhub"
        JENKINS_AT_STAGING = "jenkins@staging.taskagile.com"
    }

    stages {
        stage("Build package") {
            steps {
                echo "Git commit: ${env.GIT_COMMIT}"
                sh "mvn clean package"
            }
        }
	}
}