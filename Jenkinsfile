pipeline {
    agent any
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Thrishank99/SpringBootRealTimeEndToEndProject.git']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t Thrishank99/springboot-realtime-endtoend-project .'
                }
            }
        
        }
        stage('Push image to Hub'){
            steps{
                script{
                  withCredentials([usernamePassword(credentialsId: 'srinudockerhub', passwordVariable: 'srinudockerhub', usernameVariable: 'srinudockerhub')]) {
                  bat "docker login -u ${env.Thrishank99} -p ${env.Srinu@9676}"

}
                  bat 'docker push Thrishank99/springboot-realtime-endtoend-project'
                }
            }
        }  
   }
}