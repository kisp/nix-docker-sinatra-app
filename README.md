# Nix-Docker-Sinatra-App

This repository demonstrates the use of Nix to build a small Docker
image for a Ruby Sinatra application.

**Notes:** The deployed application at
[https://nix-docker-sinatra-app.fly.dev/](https://nix-docker-sinatra-app.fly.dev/)
might not always be running.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Inspiration](#inspiration)
- [Pinning of Packages](#pinning-of-packages)

<!-- markdown-toc end -->

## Inspiration

This project draws inspiration from the article "Using Nix with
Dockerfiles" by Mitchell Hashimoto. You can find the original article
[here](https://mitchellh.com/writing/nix-with-dockerfiles).

## Pinning of Packages

This repository employs package version pinning to ensure
reproducibility and stability across different environments. The
package versions are pinned to the hash
`c898ce22834cf40ea69adf6093755532df412102`. You can verify this by
searching for the hash in the repository. Here are the four
environment files where the pinning is applied:

| File                                                     | Environment                                                         |
|----------------------------------------------------------|---------------------------------------------------------------------|
| [`.envrc`](./.envrc)                                     | Developing with [direnv](https://direnv.net/)                       |
| [`.gitlab-ci.yml`](./.gitlab-ci.yml)                     | [GitLabCI](https://gitlab.com/)                                     |
| [`.github/workflows/ci.yml`](./.github/workflows/ci.yml) | [GitHub CI](https://github.com/kisp/nix-docker-sinatra-app/actions) |
| [`Dockerfile`](./Dockerfile)                             | Running in [production](./fly.toml)                                 |

In these files, the `NIX_PATH` variable is set to
`nixpkgs=https://github.com/NixOS/nixpkgs/archive/c898ce22834cf40ea69adf6093755532df412102.tar.gz`,
ensuring that the specified package versions are used during
development, testing in CI, and running in production.
