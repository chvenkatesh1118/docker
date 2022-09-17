pipeline {
agent any
//  parameters {
//  choice(name:'component',
//          choice: ['frontend',
//                   'mongodb'],
//          description:'select component '
//        )
//    }
   environment {

           COMPONENT = 'mongodb'
     }

 stages{
  stage('build'){
   steps{
   sh 'docker build -t ${COMPONENT} roboshop/${COMPONENT}/'
   }
  }
   stage('push'){
     steps{
     sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/d3v4j0e2'
     sh 'docker tag ${COMPONENT}:latest public.ecr.aws/d3v4j0e2/chantiecr:${COMPONENT}'
     sh 'docker push public.ecr.aws/d3v4j0e2/chantiecr:${COMPONENT}'
     }
    }
  }
 }