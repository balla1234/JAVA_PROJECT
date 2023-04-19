pipeline{
    agent any
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                     sh '${mvnHome}/bin/mvn sonar:sonar'
                }
                
            }
        }
    }  
  }
}

