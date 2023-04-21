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
                   withMaven(maven:'Maven 3.5') {
                        sh 'mvn clean package sonar:sonar'

                    }
                   
                    
 stage("Quality Gate"){
      timeout(time: 1, unit: 'HOURS') 
      {
        waitForQualityGate abortPipeline: true
        def qg= waitForQualityGate()
        if (qg.status!= 'OK'){
          error "Pipeline aborted due to quality gate failure: ${qg.status}"
        }
      }         
      echo 'Quality Gate Passed'    
             }
                }
                          
                }
                
            }
    }

    } 
  

}
