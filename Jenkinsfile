pipeline {
  agent { 
    kubernetes {
      label 'node'
    }
  }
  stages {
    stage('Build') {
      steps {
        container('dind') {
          sh "docker -h"
        }
      }
    }
  }
}
