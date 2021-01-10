pipeline {
    agent any

    stages {
        
            stage('Compile') {
                steps {
                    
                        bat 'mvn clean compile -e'
                    
                }
            }
            stage('Test') {
                steps {
                    
                        bat 'mvn clean test -e'
                    
                }
            }
            stage('Jar') {
                steps {                
                        bat 'mvn clean package -e'
                    
                }
            }
           stage('SonarQube analysis') {
               steps{
            withSonarQubeEnv( installationName: 'SonarQube') { 
              bat 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
                 }
               }
          }
            stage('Run') {
                steps {
                    
                        bat 'nohup start mvn spring-boot:run &'
                        sleep 20
                    
                }
            }
            stage('TestApp') {
                steps {
                    
                        bat 'curl -X GET "http://localhost:8081/rest/mscovid/test?msg=testing"'
                    
                }
            }

    }
}
