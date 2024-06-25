# reful-api-deployer-docker

[元リポジトリ](https://github.com/sikmi/reful-api-deployer-docker)
[元Docker Hub](https://hub.docker.com/r/sikmi/reful-api-deployer-docker)

## ビルド方法
`$ docker build -t reful-api-deployer-docker .`

## デプロイ方法
`$ cp .env.example .env`
個人用アクセストークン、ユーザ名、リポジトリ名を`.env`に追記する。
`$ sh deploy.sh`