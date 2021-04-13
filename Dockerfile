FROM node:12

#RUN mkdir -p /app
#WORKDIR /src
#ADD . /app

# 앱 디렉터리 생성
WORKDIR /src

# 앱 의존성 설치
# 가능한 경우(npm@5+) package.json과 package-lock.json을 모두 복사하기 위해
# 와일드카드를 사용
COPY . .
EXPOSE 9000 9000
RUN npm install imagemin-webpack-plugin
RUN npm install
CMD ["npm","run","preview"]


