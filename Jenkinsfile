pipeline {
    agent {
        docker {
            image 'chef/inspec:latest'
        }
    }

	environment {
		CHEF_LICENSE = 'accept'
	}

    parameters {
        choice choices: ['us-west-2', 'us-east-2'], description: '', name: 'region'
    }

    options {
      timeout(15)
      timestamps()
      ansiColor('xterm')
      disableConcurrentBuilds()
    }

    stages {
        stage('Run tests'){
            steps {
                sh label: 'Inspec tests', script: """inspec exec aws-security -t aws://${params.region} --reporter cli junit:/junit.xml""" 
            }
        }
        // stage('Save test results') {
        //     steps {
        //         junit 'junit.xml' 
        //     }       
        // }
    }
    post {
        always {
            junit 'junit.xml' 
            cleanWs()
        }
    }

}
