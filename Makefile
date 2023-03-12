TAG              := latest
ECR_URI          := 497217256558.dkr.ecr.ap-northeast-1.amazonaws.com
ECR_BACKEND      := ${ECR_URI}/onboarding-backend-yj:${TAG}

build:
	@docker build -t ${ECR_BACKEND} .

push:
	@docker push ${ECR_URI}

