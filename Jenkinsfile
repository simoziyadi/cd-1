pipeline {

  agent {
    docker {

      image 'zenika/terraform-azure-cli:latest'
   
    }
  }

	stages {

		stage('Stage 1: Check Properties'){

			steps {
            			script {
              				def ciProperties = readProperties file: 'cd.properties'
              				env.deploy = ciProperties['deploy']
           			 }
        		  }


	}

   		stage('Stage 2: Terraform init'){

			steps{
				script { sh 'terraform -v ' }
				script { sh 'terraform init -backend-config=./secrets/init.tfvars ' }
			}
}

		stage('Stage 3: Terraform plan'){
			when { environment name: 'deploy', value: 'true' }
                        steps{

                                script { sh 'terraform plan -out ${BUILD_NUMBER}.tfplan'} 
                        }
}

	       stage('Stage 4: Terraform apply'){
			when { environment name: 'deploy', value: 'true' }
                        steps{

                                script { sh 'terraform  apply  ${BUILD_NUMBER}.tfplan '}
                        }
}
		
		stage('stage5: terraform destroy'){
			when { environment name: 'deploy', value: 'false' }
			steps {
				script { sh 'terraform destroy'}
			}
		
		}
}
	post {
                always {
                  step([$class: 'WsCleanup'])
                }
            }
}
