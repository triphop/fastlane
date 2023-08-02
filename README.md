## HOW TO BUILD MULTI ARCHITECTURE IMAGES



#### STEP 1:

   Create your own custom builder by running

   ```sh
    docker buildx create --name custombuilder --driver docker-container --bootstrap
   ```

#### STEP 2:

   Ask docker to use this new builder for future builds by running

```sh
 docker buildx use custombuilder
```

#### STEP 3:

   Inspect buildx to see if docker has indeed switched builders to the new one you asked it to use by running

```sh
 docker buildx inspect
```

  You should get a response like below

```sh
Name:          custombuilder
Driver:        docker-container
Last Activity: 2023-08-02 08:16:52 +0000 UTC

Nodes:
Name:      custombuilder0
Endpoint:  desktop-linux
Status:    running
Buildkit:  v0.11.6
Platforms: linux/arm64, linux/amd64, linux/amd64/v2, linux/riscv64, linux/ppc64le, linux/s390x, linux/386, linux/mips64le, linux/mips64, linux/arm/v7, linux/arm/v6
```

