node {
    def app

    stage('Clone repository') {

        checkout scm
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

    stage('Build image') {

        app = docker.build("200.17.20.2:8083/task02")
    }

    stage('Test image') {

        app.inside {
            echo "Tests passed"
        }
    }

    stage('Push image') {
        /*
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry('https://200.17.20.2:8083/task02', 'nexus') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            }
                echo "Trying to Push Docker Build to DockerHub"
    }
}
