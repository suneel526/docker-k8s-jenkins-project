node{
    
    stage('git-clone'){
        
        git 'https://github.com/suneel526/docker-k8s-jenkins-project.git'
        
    }
    
    stage('mave-build'){
        
        sh label: '', script: 'mvn install'
        
    }
    
    stage('docker-image-build'){
        
        sh label: '', script: 'docker build -t suneel0526/k8s-docker-jenkins .'
        
    }
    
    }
