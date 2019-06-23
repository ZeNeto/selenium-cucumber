node{
   stage('SCM Checkout'){
     git 'https://github.com/ZeNeto/selenium-cucumber'
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'maven-3', type: 'maven'
      sh "${mvnHome}/bin/mvn package"
   }

   stage('SonarQube Analysis') {
        def mvnHome =  tool name: 'maven-3', type: 'maven'
        withSonarQubeEnv('sonarqube') {
          sh "${mvnHome}/bin/mvn sonar:sonar"
        }
    }


}
