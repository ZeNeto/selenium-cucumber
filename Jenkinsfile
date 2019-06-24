pipeline {
    agent any

  stages {

      stage('checkout') {
        steps {
          checkout scm
          }
      }

      stage('Build') {
        steps {
          sh 'docker build . -t 200.17.20.2:8083/task02'
          }
      }


}
}
