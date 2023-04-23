 pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("Sonar quality status"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar_token') {
                    sh "mvn sonar:sonar"    
                    sh 'mvn clean package sonar:sonar'
                     }

                    }
                   
                  }
                }
                          
             }
                
        }
    
        


