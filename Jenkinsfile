pipeline {
    agent any

    options {
        timestamps()
        timeout(time: 5, unit: 'MINUTES')

        buildDiscarder(logRotator(numToKeepStr: '10'))
        disableConcurrentBuilds()
    }
    
    stages {
        stage ('Init') {
            steps {
                echo 'Stage: Init'
                echo "branch=${env.BRANCH_NAME}"
            }
        }
        stage ('Docker') {
            agent { dockerfile true }
            steps {
                echo 'Stage: Docker'
            }
        }
    }
    post {
        always {
            echo 'post/always'
            deleteDir()
        }
        success {
            echo 'post/success'
        }
        failure {
            echo 'post/failure'
        }
    }
}
