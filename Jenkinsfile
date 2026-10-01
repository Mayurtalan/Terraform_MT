pipeline {
    agent any

    stages {

        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/MohammadRafeeq7095/Terraform_CICD.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }

    }
}



// you also give parameters like action for apply and destroy in code you have to give ${action} ex: sh 'terraform ${action} -auto-approve'
