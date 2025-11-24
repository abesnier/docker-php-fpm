group "bases" {
  targets = [
               "php-fpm-grav-81",
               "php-fpm-grav-82",
               "php-fpm-grav-83",
               "php-fpm-grav-84",
               "php-fpm-grav-85", 
               "php-fpm-alpine"
            ]
}

group "optional" {
  targets = [
               "php-fpm-grav-81-optional",
               "php-fpm-grav-82-optional",
               "php-fpm-grav-83-optional",
               "php-fpm-grav-84-optional",
               "php-fpm-grav-85-optional",
               "php-fpm-alpine-optional"
            ]
}

target "php-fpm-grav-81" {
  dockerfile = "Dockerfile"
  args = { VERSION ="8.1.33"}
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.1"]
}

target "php-fpm-grav-81-optional" { 
  dockerfile = "Dockerfile.optional" 
  args = { VERSION ="8.1"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.1-optional"]
}

target "php-fpm-grav-82" {
  dockerfile = "Dockerfile"
  args = { VERSION ="8.2.29"}
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.2"]
}

target "php-fpm-grav-82-optional" { 
  dockerfile = "Dockerfile.optional" 
  args = { VERSION ="8.2"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.2-optional"]
}

target "php-fpm-grav-83" {
  dockerfile = "Dockerfile"
  args = { VERSION ="8.3.28"}
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav", "abesnier/php-fpm:grav-8.3"]
}

target "php-fpm-grav-83-optional" { 
  dockerfile = "Dockerfile.optional" 
  args = { VERSION ="8.3"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-optional", "abesnier/php-fpm:grav-8.3-optional"]
}

target "php-fpm-grav-84" {
  dockerfile = "Dockerfile"
  args = { VERSION ="8.4.15"}
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.4"]
}

target "php-fpm-grav-84-optional" { 
  dockerfile = "Dockerfile.optional" 
  args = { VERSION ="8.4"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.4-optional"]
}

target "php-fpm-grav-85" {
  dockerfile = "Dockerfile"
  args = { VERSION ="8.5.0"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.5"]
}

target "php-fpm-grav-85-optional"{
  dockerfile = "Dockerfile.optional.8.5"
  args = { VERSION ="8.5"}
  platforms = ["linux/amd64","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-8.5-optional"]
}

target "php-fpm-alpine" {
  dockerfile = "Dockerfile.alpine"
  args = { VERSION ="8.3.28"}
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-alpine"]
}

target "php-fpm-alpine-optional" {
  dockerfile = "Dockerfile.optional.alpine"
  platforms = ["linux/386","linux/amd64","linux/arm/v7","linux/arm64/v8"]
  tags = ["abesnier/php-fpm:grav-alpine-optional"]
}
