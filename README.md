# Serverless Go Env

[![Serverless][ico-serverless]][link-serverless]
[![License][ico-license]][link-license]

[ico-serverless]: http://public.serverless.com/badges/v3.svg
[ico-license]: https://img.shields.io/github/license/randyhermawan/serverless-go-env.svg
[link-serverless]: http://www.serverless.com/
[link-license]: ./LICENSE

Image that contains serverless framework cli with go cli to be used as a container in CI CD.

```
docker pull randyhermawan/serverless-go-env:tagname
```

## What installed

- Git
- Bash
- Node + NPM
- Go

## ENV variable

- GOPRIVATE => Setup for private go module
- AWS_ACCESS_KEY_ID => Serverless framework necessities to deploy to AWS
- AWS_SECRET_ACCESS_KEY => Serverless framework necessities to deploy to AWS

## Go private module setup

To make downloading modules from private repository possible, the following must be configured in CI CD.

```
# GitHub
git config --global url."https://{GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com".insteadOf "https://github.com"
```

---

**2022 - 2022 Randy Hermawan, GK**
