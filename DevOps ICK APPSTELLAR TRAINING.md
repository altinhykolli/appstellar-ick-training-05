DevOps ICK APPSTELLAR TRAINING

* Docker
    - (https://stackoverflow.com/questions/23735149/what-is-the-difference-between-a-docker-image-and-a-container)

* Kubernetes
    - (https://www.weave.works/blog/kubernetes-beginners-guide/)
    - kubectl (translates cli commands and sends to api server) 
    - helm
    - resources vs operators (api server, scheduler, ingress controller, storage controller) {resources are to be created and operators help create resources}
    - Github Actions (workflows to run apps automatically) vs ArgoCD (learn ArgoCD and plugins *future of devops)

* Terraform
    - (https://developer.hashicorp.com/terraform/intro)  (uses it's own language, syntax *HCL)

* AWS
    - EKS
    - VPC
    - EC2
    - ACM
    - ROUTE 53
    - IAM
    - ECR

* Continous Integration (add, commit, push new changes to code or define apps)
* Continous Deployment (update and install images)

* 2 MAIN PROVIDERS THAT WE USE ARE **AWS and **GITHUB
    - push terraform code into github, apply it to terraform cloud and create an ECR repository
    - push dockerfile(nextjs) into github, passes to github actions and creates an image into AWS ECR
    - ArgoCD constanly monitors the github repository, when a change happens ArgoCD synchronizes the changes from github
    - (ArgoCD image updater) updates the image tag automatically from AWS ECR

    - kubectl command and helm command go directly into the cluster

* AWS Blue/Green Deployments
    - A blue/green deployment is a deployment strategy in which you create two separate, but identical environments.
    | One environment (blue) is running the current application version and one environment (green) is running the new application version
    - Kubernetes Canary Deployment