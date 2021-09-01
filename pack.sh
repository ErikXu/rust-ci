SERVICE_NAME=${SERVICE_NAME:-rust-ci}
echo "SERVICE_NAME: "$SERVICE_NAME

IMAGE_NAME=${IMAGE_NAME:-rust-ci}
echo "IMAGE_NAME: "$IMAGE_NAME

IMAGE_TAG=${IMAGE_TAG:-1.0.0}
echo "IMAGE_TAG: "$IMAGE_TAG

docker build --no-cache --disable-content-trust=true --build-arg RUST_FILE=$SERVICE_NAME -t $IMAGE_NAME:${IMAGE_TAG} -f ./docker/Dockerfile ./publish/x86_64-unknown-linux-musl/release
docker push ${IMAGE_NAME}:${IMAGE_TAG}
docker rmi ${IMAGE_NAME}:${IMAGE_TAG}