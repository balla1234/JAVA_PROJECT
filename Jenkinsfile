pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonarserver') {
                      sh 'mvn sonar:sonar'
                      
                   }
                   def qg = waitForQualityGate()
                      if (qg.status != 'OK') {
                           error "Pipeline aborted due to quality gate failure: ${qg.status}"
                      }
                    
                  }
               }
             }  
            

            }
         }
    




 
        
                
        
    
        


