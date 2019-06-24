pipeline {
    agent any
    stages {

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
                sh 'docker build . -t 200.17.20.2:8083/task02'
            }
        }

        stage('Send IMG') {
            steps {
                sh 'docker push 200.17.20.2:8083/task02:latest'
            }
        }


}
}
