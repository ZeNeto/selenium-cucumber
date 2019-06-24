node {
agent any
stages {

    checkout scm

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
    docker.withRegistry('https://200.17.20.2:8083', 'nexusadmin') {

        def customImage = docker.build("200.17.20.2:8083/task02")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
}
}
