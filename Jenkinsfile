pipeline {
    agent any

    stages {
        
            stage('Compile') {
                steps {
                    dir("C:\\\\Users\\\\cmartinez\\\\Documents\\\\personal\\\\devops\\\\Unidad 3\\\\PrimerPipeline\\\\ejemplo-maven") {
                        sh 'mvn clean compile -e'
                    }
                }
            }
            stage('Test') {
                steps {
                    dir("C:\\\\Users\\\\cmartinez\\\\Documents\\\\personal\\\\devops\\\\Unidad 3\\\\PrimerPipeline\\\\ejemplo-maven") {
                        sh 'mvn clean test -e'
                    }
                }
            }
            stage('Jar') {
                steps {
                    dir("C:\\\\Users\\\\cmartinez\\\\Documents\\\\personal\\\\devops\\\\Unidad 3\\\\PrimerPipeline\\\\ejemplo-maven") {
                        sh 'mvn clean package -e'
                    }
                }
            }
            stage('Run') {
                steps {
                    dir("C:\\\\Users\\\\cmartinez\\\\Documents\\\\personal\\\\devops\\\\Unidad 3\\\\PrimerPipeline\\\\ejemplo-maven") {
                        sh 'mvn spring-boot:run &'
                        sleep 20
                    }
                }
            }
            stage('TestApp') {
                steps {
                    dir("C:\\\\Users\\\\cmartinez\\\\Documents\\\\personal\\\\devops\\\\Unidad 3\\\\PrimerPipeline\\\\ejemplo-maven") {
                        sh 'curl -X GET "http://localhost:8081/rest/mscovid/test?msg=testing"'
                    }
                }
            }
    }
}
