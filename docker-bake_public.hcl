variable "TAG" {
  default = "latest"
}

group "default" {
  targets = [
    "public",
    "public_arm64"
  ]
}


target "public" {
  dockerfile = "Dockerfile"
  args = {
    S6_ARCH = "amd64"
  }
  platforms = [
    "linux/amd64"
  ]
  tags = [
    "getshifter/proxysql:${TAG}"
  ]
}

target "public_arm64" {
  inherits = ["public"]
  args = {
    S6_ARCH = "aarch64"
  }
  platforms = [
    "linux/amd64"
  ]
}
