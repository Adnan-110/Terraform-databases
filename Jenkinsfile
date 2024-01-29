pipeline{
    agent{
        label 'ws'
    }
    options {
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select the Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select the Actionn to be Performed')
    }
    stages {
        stage('Terraform init') {
            steps{
                sh "terrafile -f env-dev/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars -migrate-state"
            }
        }
        stage('Terraform plan') {
            steps{
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
        }
        }
        stage('Terraform Apply/Destroy') {
            steps{
               sh "terraform ${ACTION} -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
    }
}