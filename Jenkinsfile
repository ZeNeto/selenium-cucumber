pipeline {
    agent any
    stages {
        stage('SonarQube analysis) {
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
                sh 'docker build -f ./Dockerfile -t 172.17.0.2:8083/task02 .'
            }
        }

        stage('Send IMG') {
            steps {
                sh 'docker push 172.17.0.2:8083/task02:latest'
            }
        }


}
}
