node {

  stages {

      stage('checkout') {
        checkout scm      
        }


      stage('Build') {
        sh 'docker build . -t 200.17.20.2:8083/task02'
        }
        
      stage('Build') {
        docker.withRegistry('https://200.17.20.2:8083', 'nexusadmin') {
            def customImage = docker.build("200.17.20.2:8083/task02")
            customImage.push()
        }
      }
}
}
