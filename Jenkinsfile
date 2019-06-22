#!/usr/bin/env groovy


pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn test'
                }
            }
        }


        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn deploy'
                }
            }
        }

        stage('SonarQube') {
            sh 'mvn sonar:sonar'
            }
    }
}

# node {
# 
#     stage('Build') {
#     sh 'mvn clean install'
#
#     }
#
#     stage('SonarQube') {
#     sh 'mvn sonar:sonar'
#
#     }
#
#
# }
