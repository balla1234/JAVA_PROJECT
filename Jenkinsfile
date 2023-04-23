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
                  }
                }
             }

            stage('Quality Gate status'){
                steps{
                    script{
                        waitForQualityGate abortPipeline: false, credentialsId: 'my_sonar_token'
                    }
                }
            }  
            
        }
                
        }
    
        


