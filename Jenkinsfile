 pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("Sonar quality status"){
            
         steps{
            script{
                
                withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                     sh 'mvn sonar:sonar'
                    }
                timeout(time: 1, unit: 'HOURS') {
                    def qg = waitForQualityGate()
                      if (qg.status != 'OK') {
                           error "Pipeline aborted due to quality gate failure: ${qg.status}"
                      }
                    }    

                       

                    }
                   
                  }
                }
                          
             }
                
        }
    
        


