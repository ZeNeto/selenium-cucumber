pipeline {
    agent any
    stages {
        stage('SonarQube analysis 1') {
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
                sh 'docker build -f ./Dockerfile -t 172.17.0.2:8081/repository/task02/imagemtask02 .'
            }
        }

        
}
}
