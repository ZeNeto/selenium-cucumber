pipeline {
    agent any
stages {

    stage('checkout'){
      steps {
        checkout scm
            }
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
    docker.withRegistry('https://200.17.20.2:8083', 'nexusadmin') {
        def customImage = docker.build("200.17.20.2:8083/task02")
        customImage.push()
    }
    }
}
}
}
