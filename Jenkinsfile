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

            }
        }
