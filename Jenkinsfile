pipeline {
    agent any

    options {
        timestamps()
        timeout(time: 5, unit: 'MINUTES')

        buildDiscarder(logRotator(numToKeepStr: '10'))
        disableConcurrentBuilds()
    }
    
    stages {
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
    }
}
