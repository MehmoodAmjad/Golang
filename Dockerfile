# FROM golang:latest

# #RUN mkdir /build
# WORKDIR /app

# RUN export GO111MODULE=on
# #RUN go install github.com/MehmoodAmjad/TESTINGGOmain@latest
# #RUN cd /build && git clone https://github.com/MehmoodAmjad/TESTINGGO.git

# # RUN cd /build/TESTINGGO && go build
# RUN go build /Users/mehmood.amjad/Desktop/TestingGO

# EXPOSE 4000

# ENTRYPOINT [ "/Users/mehmood.amjad/Desktop/TestingGO/main" ]

FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /TESTINGGO/main.go

EXPOSE 4000

CMD [ "/TESTINGGO/main.go" ]
