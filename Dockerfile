FROM swift:5.3 as builder
WORKDIR /fake-tello
COPY . /fake-tello
RUN swift build -c release

FROM swift:5.3-slim
WORKDIR /fake-tello
COPY --from=builder /fake-tello/.build/x86_64-unknown-linux-gnu/release/ .
ENTRYPOINT ["./fake-tello"]
CMD ["--host", "0.0.0.0", "--port", "8889"]
EXPOSE 8889
