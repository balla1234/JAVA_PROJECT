pipeline{
    agent any
    stages{
        stage("SonarQube_check_quality"){
            agent{
                docker {
                    image 'openjdk:11'
                }
            }
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