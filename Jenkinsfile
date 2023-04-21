pipeline{
    agent any
        tools{
            maven 'mymaven'
        }
    
    stages{
        stage("build & SonarQube analysis") {
          script {
              withSonarQubeEnv(credentialsId: 'my_sonar_token')  {
                 sh 'mvn clean package sonar:sonar'
              }
          }
      }

      stage("Quality Gate"){
          timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
          }
      }
    }
}

        


