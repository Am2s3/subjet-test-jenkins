pipeline {
    agent {
        label('terraform')
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('AKIAQHAASHGDJZ33TSTV')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }

    options { 
        disableConcurrentBuilds()
        ansiColor('xterm')
        timeout(time: 10, unit: 'MINUTES')
        timestamps()
    }
    stages {
        stage('Init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Apply') {
             input {
                 message "Do you want to continue"
                 ok "Yes, continue the pipeline"
             }
             when {
                branch 'main'
             }
            steps {
                dir('terraform') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
