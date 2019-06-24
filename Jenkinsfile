pipeline {
    agent any
    stages {
      def app
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

        stage('Build image') {
            /* This builds the actual image */

            app = docker.build("200.17.20.2:8083/task02")
        }



}
}
