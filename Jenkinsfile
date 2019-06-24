pipeline {
    agent any

  stages {

      stage('Build') {
        steps {
          sh 'mvn clean install'
          }
      }

      stage('SonarQube analysis') {
          steps {
              sh 'mvn sonar:sonar'
          }
      }

      stage('Create Docker') {
        steps {
          sh 'docker build . -t 200.17.20.2:8083/task02'
          }
      }
      stage('Send Image Docker for Nexus') {
      steps {
          script {
          docker.withRegistry('https://200.17.20.2:8083', 'nexusadmin') {
              def customImage = docker.build("200.17.20.2:8083/task02")
              customImage.push()
            }
          }
        }
      }

}
}
