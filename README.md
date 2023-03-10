# ToDo_Web_app3
## _This project is a service that allows users to write notes about what they need to do._


## Features:

- User authentication and authorization
- CRUD operations for notes


## Tech

Dillinger uses a number of open source projects to work properly:

- [Terraform](https://www.terraform.io/) - Terraform Cloud enables infrastructure automation for provisioning!
- [Docker-compose](https://docs.docker.com/compose/) - Compose is a tool for defining and running multi-container Docker applications
- [AWS cloud](https://aws.amazon.com/what-is-aws/) - AWS provides a range of services for cloud computing, data storage, machine learning, security, and more.
- [Postgres v14.1](https://www.postgresql.org/download/)- Postgres is an open source relational database system that supports SQL and JSON queries. 
- [Fastapi](https://fastapi.tiangolo.com/) - FastAPI is a modern and fast web framework for building APIs with Python based on standard type hints.
- [GitHub Actions](https://github.com/features/actions)- GitHub Actions is a CI/CD platform that allows you to automate your software development workflows right in your repository. 
## Installation


Open your favorite Terminal and run these commands.

Login to AWS cloud:

```sh
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
```

Terraform commands:

```sh
terraform init
```



```sh
terraform apply --auto-approve
```

To store tfstate on remote s3 bucket unlock that code:
```sh
terraform {
  backend "s3" {
    bucket = "my-tf-state-bucket-gelding-dev" #Change bucket name to your actual bucket name. You will see that in outputs.
    key    = "path/to/my/key"
    region = "eu-central-1"
  }
}
```sh

Change harcoded bucket and region.

Next I setup CI/CD creds:
Go to AWS -> IAM -> users -> ecr-user
Open Security credentials tab
Scroll down to Access keys -> Create access key -> Other
Save file.
Add Secret to github action secret store. *In the future we check availabilit terraform add secrets to github.




Then we add policy to user ecr user 
AWSAppRunnerServicePolicyForECRAccess, 
EC2InstanceProfileForImageBuilderECRContainerBuilds,
ecretsManagerReadWrite
* In the future we need to improve that





Start scypt to add ssl serts:
```sh
./init-letsencrypt.sh
```

## To setup CI/CD we need to add secret vars::

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_REGION
- ECR_REPOSITORY
- INSTANCE_HOST
- INSTANCE_KEY
- INSTANCE_USER

That vars uses in our github action pipeline
![image](https://user-images.githubusercontent.com/50805334/224275693-42f42348-d12f-459b-b8a5-8d67ecbfe11d.png)


To delete all:
we need to do some steps manually
1) Delete ECR registry: aws ecr delete-repository --repository-name fastapi-backend-repository-dev --force --region eu-central-1
