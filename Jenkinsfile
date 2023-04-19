pipeline{
    agent any
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                        def mvnHome = tool name: 'maven-3' , type: 'maven'
                        sh '${mvnHome}/bin/mvn package'
                        sh '${mvnHome}/bin/mvn sonar:sonar'
                }
                
            }
        }
    }  
  }
}

