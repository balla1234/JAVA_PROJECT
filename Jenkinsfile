pipeline {
    agent any 
            tools{
            maven 'mymaven'
        }
        
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar-token') {
                           sh 'mvn sonar:sonar'
                            
                        }
                } 
            }
        
           timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
            def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
           if (qg.status != 'OK') {
           error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
            }
          

                }  
            
        
    




 
        
                
        
    
        


