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
                    sh "mvn sonar:sonar" 

                    }
                   
                    
stage("Check Quality Gate") {
    timeout(time: 1, unit: 'HOURS') {
        def qg = waitForQualityGate()
        waitUntil {
            // Sometimes an analysis will get the status PENDING meaning it still needs to be analysed.
            if (qg.status == 'PENDING') {
                qg = waitForQualityGate()
                return false
            } else {
                return true
            }
          }
                
             }
                }
                          
                }
                
            }
    }

    } 
  
}

