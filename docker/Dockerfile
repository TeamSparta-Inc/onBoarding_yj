
FROM node

MAINTAINER Yoojin Oh <yj.oh@teamsparta.co>

# Working directory /app 생성
RUN mkdir -p /app

# Working directory /app 으로 지정	
WORKDIR /app

# package.json 과 package-lock.json을 복사
COPY package*.json /app/

# 의존성 설치
RUN npm install

# 앱 소스코드 추가
COPY ../.. .

# 오픈할 포트를 지정
EXPOSE 3000

# 컨테이너에서 실행될 명령어
CMD [ "npm", "run", "start:dev" ]
