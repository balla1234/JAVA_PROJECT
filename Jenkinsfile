pipeline{
    agent any
    stages{
        stage("SonarQube_check_quality"){
            steps{
                withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                     sh 'mvn install'
                }
            }
        }
    }  
}