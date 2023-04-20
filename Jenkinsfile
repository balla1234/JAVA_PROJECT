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
                   
             stage("Quality Analysis"){ 
              sleep(60)        
              timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
                      }       
                       }
                      sh "mvn clean package sonar:sonar"
                    }    
                   
                }
                          
                }
                
            }
    }
}
     
  


