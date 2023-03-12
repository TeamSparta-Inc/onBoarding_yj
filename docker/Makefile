build:
	docker build -t $(ECR_REPO)/$(IMAGE):$(TAG) .

push:
	docker tag $IMAGE_REPO_NAME:$(TAG) $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$(TAG)

	docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$(TAG)
