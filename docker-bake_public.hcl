variable "TAG" {
  default = "public"
}

group "default" {
  targets = [
    "public_amd64",
    "public_arm64"
  ]
}

target "public_amd64" {
  dockerfile = "Dockerfile"
  args = {
    S6_ARCH = "amd64"
  }
  platforms = [
    "linux/amd64"
  ]
  tags = [
    "getshifter/proxysql:${TAG}_amd64",
  ]
}

target "public_arm64" {
  dockerfile = "Dockerfile"
  args = {
    S6_ARCH = "aarch64"
  }
  platforms = [
    "linux/arm64"
  ]
  tags = [
    "getshifter/proxysql:${TAG}_arm64",
  ]
}
