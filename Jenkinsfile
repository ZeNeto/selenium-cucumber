pipeline {
    agent any
    stages {

          stage('Initialize'){
             def dockerHome = tool 'myDocker'
             env.PATH = "${dockerHome}/bin:${env.PATH}"
         }

        stage('SonarQube analysis') {
            steps {
                sh 'mvn sonar:sonar'
            }
        }
        stage('build') {
            steps {
                sh 'mvn install -DskipTests'
            }
        }

        stage('CreateImage') {
            steps {
                sh 'docker build -f ./Dockerfile -t 200.17.20.2:8083/task02 .'
            }
        }

        stage('Send IMG') {
            steps {
                sh 'docker push 200.17.20.2:8083/task02:latest'
            }
        }


}
}
