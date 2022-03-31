pipeline {
  agent any
    
  //tools {nodejs "node"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/MeetManvar/git_prac_exe.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'node server.js'
      }
    }  
    
            
    /*stage('Test') {
  #    steps {
   #     sh 'node server.js'
    #  }
    #}*/
  }
}
