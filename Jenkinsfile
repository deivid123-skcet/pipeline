pipeline{
	agent any
	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-hub-credentials')
	}
	stages {
		stage('Build') {
			steps {
				sh 'docker build -t 142102/siteteste:1.0 .'
			}
		}
		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		stage('Push') {
			steps {
				sh 'docker push 142102/siteteste:1.0'
			}
		}
	}

}