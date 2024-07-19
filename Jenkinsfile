git pipeline{
    agent any

    stages{

    stage('packageing'){
        steps{
           bat "mvn clean package -DskipTests"
        }
    }

    }
}