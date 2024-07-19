pipeline{
    agent any


    stages{

    stage('packageing'){
        steps{
           bat "mvn clean package -DskipTests"
        }
    }
     stage('build docker image'){
            steps{
               bat "docker build -t=cibithangaraj/jenksamp ."
            }
     }
      stage('docker push'){
                 steps{
                    bat "docker push cibithangaraj/jenksamp"
                 }
      }
    }
}