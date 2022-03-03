pipeline{
	stages {
		stage('Build') {

			steps {
				sh 'docker build -t 142102/siteteste:1.0 .'
			}
		}


		stage('Push') {

			steps {
				sh 'docker push 142102/siteteste:1.0'
			}
		}
	}

}