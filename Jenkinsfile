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

            def container

            ansiColor('xterm') {
              stage('Clone repository') {
                checkout scm
                shortCommit = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
              }

              stage('Build image') {
                container = docker.build('visibilityspots/jenkins-docker')
              }

              stage('Test image') {
                sh 'export GOSS_FILES_STRATEGY=cp && /usr/local/bin/dgoss  run --name jenkins-docker-dgoss-test --rm -ti visibilityspots/jenkins-docker'
              }

              stage('Push image') {
                docker.withRegistry('http://172.17.0.2:8081/repository/task02/', 'nexus-credentials-id') {
                  container.push("${shortCommit}")
                  container.push('latest')
                }
              }
            }



}
