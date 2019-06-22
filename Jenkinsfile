#!/usr/bin/env groovy

node {

    stage('Build') {
    sh 'mvn install -DskipTests'

    }

    stage('SonarQube') {
    sh 'mvn sonar:sonar'

    }
