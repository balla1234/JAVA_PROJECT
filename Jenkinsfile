pipeline{
    agent any
    tools {
       maven 'mymaven'
        }
    stages{
        stage("SonarQube_check_quality"){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                     sh 'mvn install'
                }
                
            }
        }
    }  
  }
}