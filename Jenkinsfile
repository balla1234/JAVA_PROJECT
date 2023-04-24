pipeline {
    agent any 
    stages{
        stage("sonar quality check"){
            agent {
                docker {
                    image 'openjdk:11'
                }
            }
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'sonar-token') {
                           sh 'mvn sonar:sonar'
                            
                        }
                } 
            }
        stage("Quality Gate"){
           timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
            def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
           if (qg.status != 'OK') {
           error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
            }
          }

                }  
            }
        }
    




 
        
                
        
    
        


