#!/usr/bin/env groovy

pipeline {

    stage('GitClone'){
    sh 'git clone https://github.com/ZeNeto/selenium-cucumber.git'
    }
    
    stage('Build') {
    sh 'mvn install -DskipTests'

    }

    stage('SonarQube') {
    sh 'mvn sonar:sonar'

    }
}
