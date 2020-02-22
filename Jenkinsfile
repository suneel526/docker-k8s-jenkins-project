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
    
    stage('docker-push'){
        
        withCredentials([string(credentialsId: 'hub-cred', variable: 'docker-hub-password')]) {
    // some block
    sh "docker login -u suneel0526 -p ${docker-hub-password}"
    
}  
    sh "docker push suneel0526/k8s-docker-jenkins"
        
    }
    
    stage('k8s-deploy'){
        
        kubernetesDeploy( 
        configs: 'k8s-manifest-file.yml',
        kubeconfigId: 'k8s_jenkins_config',
        enableConfigSubstitution: true
        
        )
    }
}
