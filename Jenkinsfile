pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'mysonartoken') {
                      sh 'mvn sonar:sonar'
                   }
                   
                    timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true, credentialsId: 'mysonartoken'
                      
                    }
                  }
               }
             }      

            }
         }
    




 
        
                
        
    
        


