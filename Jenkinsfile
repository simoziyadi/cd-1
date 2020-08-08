pipeline {

agent any

	stages {

		stage('stage1: clonage'){

			steps{

				 echo 'RIEN a Clonner'
}


}

   		stage('stage2:teraform init'){

			steps{

				script { sh 'terraform init -backend-config=./secrets/init.tfvars ' }
			}
}

		stage('stage3:teraform plan'){

                        steps{

                                script { sh 'terraform plan -out ${BUILD_NUMBER}.tfplan'} 
                        }
}

	       stage('stage4:teraform apply'){

                        steps{

                                script { sh 'terraform  apply -out ${BUILD_NUMBER}.tfplan'}
                        }
}
}
}
