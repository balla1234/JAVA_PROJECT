pipeline{
     agent {
                docker {
                image 'maven'
                args '-v $HOME/.m2:/root/.m2'
                }
            }
            stages{ 
                
                stage('Quality gate status check')
                  steps{
                      script{
                      withSonarQubeEnv(credentialsId: 'my_sonar_token') { 
                      sh "mvn sonar:sonar"
                       }
                      timeout(time: 1, unit: 'HOURS') {
                      
                      
                    }
		    sh "mvn clean install"
                  }
                }  
              }

   
} 

    
  


