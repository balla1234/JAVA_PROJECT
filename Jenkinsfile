 

pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar-token') {
                    sh "mvn sonar:sonar" 

                    }
                   
                  }
               }
             }      

            }
         }
    




 
        
                
        
    
        


