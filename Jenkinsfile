pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                    sh "mvn sonar:sonar" 

                    }
                    
                             timeout(time: 1, unit: 'HOURS') 
                             {
                          waitForQualityGate abortPipeline: false, credentialsId: 'my_sonar_token'
                          
                       }         
                      sh "mvn clean install"
                    
                    
             }
                }
                          
                }
                
            }
    }



