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
                    withSonarQubeEnv('my_sonar_token') {
                    sh 'mvn sonar:sonar'

                    }
                   
                    
 stage("Quality Gate"){
      timeout(time: 1, unit: 'HOURS') 
      def qg = waitForQualityGate()
                      if (qg.status != 'OK') {
                           error "Pipeline aborted due to quality gate failure: ${qg.status}"
                      }
                    }
		    sh "mvn clean install"        
         
             }
                }
                          
                }
                
            }
    }


    
  


