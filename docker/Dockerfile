# syntax=docker/dockerfile:1

FROM golang:1.22-alpine AS builder
ENV GO111MODULE=on

# 必要なパッケージのインストールと不要なキャッシュの削除を1つのRUN命令で実行
RUN apk update && \
    apk add --no-cache ca-certificates git

WORKDIR /app

# 依存関係ファイルのコピー
COPY go.mod go.sum ./
RUN go mod download

COPY . .

# RUN go build -o /app/bin/main ./cmd/main.go

# 開発環境用のCMD
CMD [ "go","run","./cmd/main.go" ]

# FROM alpine:latest
# COPY --from=builder /app/bin/main /app/bin/main
# CMD ["/app/bin/main"]