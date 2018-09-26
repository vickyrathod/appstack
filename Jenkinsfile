pipeline{
 agent any
 stages{
  stage('scm') {
	steps{
	 git url: 'https://github.com/vickyrathod/appstack.git'
	}
  }
  stage('deploy') {
	steps{
	  sh "echo 'mkdir -p khaopio' | scp -i ${JENKINS_HOME}/sshkeys/id_rsa khaopio007@khaopio.in";
	  sh "scp -i ${JENKINS_HOME}/sshkeys/id_rsa . khaopio007@khaopio.in:\$HOME/khaopio/";
	}
   }
 }
}
