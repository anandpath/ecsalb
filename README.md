# ecsalb

## References - Mainly, first two
1. https://javatodev.com/how-to-build-aws-vpc-using-terraform-step-by-step/
2. https://dev.to/thnery/create-an-aws-ecs-cluster-using-terraform-g80
3. https://medium.com/@bradford_hamilton/deploying-containers-on-amazons-ecs-using-fargate-and-terraform-part-2-2e6f6a3a957f


## For the Service to be in ECR
1. First build the docker image with: docker build -t <dockerservicetag> .
2. Then try running, locally, the image as container [host_port]:[container_port]: docker run -d --publish 80:80 <dockerservicetag>
3. Then connect using aws cli and docker login to ecr: aws ecr get-login-password --region <region-e.g.,ap-south-1> | docker login --username AWS --password-stdin <your_account>.dkr.ecr.<region>.amazonaws.com
4. Then tag the docker image: docker tag <dockerservicetag>:latest <your_account>.dkr.ecr.<region>.amazonaws.com/<ecr-repository-name>:latest
5. Then push the image to ecr: docker push <your_account>.dkr.ecr.<region>.amazonaws.com/<ecr-repository-name>:latest
