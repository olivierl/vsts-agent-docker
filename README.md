# VSTS Agent

Docker image for running browser tests against headless Chromium

``` bash
# Build
docker build -t vsts-agent:dotnet-2.1-preview1 .

# Tag
docker tag vsts-agent:dotnet-2.1-preview1 olivierl/vsts-agent:dotnet-2.1-preview1

# Push
docker push olivierl/vsts-agent:dotnet-2.1-preview1
```