TAG             := latest
ECR_URI         := 497217256558.dkr.ecr.ap-northeast-1.amazonaws.com
ECR_BACKEND     := ${ECR_URI}/onboarding-backend-yj:${TAG}

build:
	@docker build -t ${ECR_BACKEND} .
# @는 서버 명령어 실행, docker build는 도커라이징 (도커 이미지 만들기)
push:
	@aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin ${ECR_URI}
	@docker push ${ECR_BACKEND}
# 만들어준 이미지를 ecr에 업로드 하는 과정