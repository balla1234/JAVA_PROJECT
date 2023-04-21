pipeline{
    agent {
        docker {
            image 'maven'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages{
        stage("SonarQube_check_quality"){
            
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'my_sonar_token') {
                    bat 'mvn package sonar:sonar'

                    }
                   
                    
 stage("Quality Gate"){
      timeout(time: 1, unit: 'HOURS') 
      {
        waitForQualityGate abortPipeline: true
        
          }
      }         
      sh 'mvn clean package'    
             }
                }
                          
                }
                
            }
    }


    
  


