# Nix-Docker-Sinatra-App

This repository demonstrates the use of Nix to build a small Docker
image for a Ruby Sinatra application.

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

| File                       | Environment                        |
|----------------------------|------------------------------------|
| `.gitlab-ci.yml`           | GitLabCI                           |
| `Dockerfile`               | Running in production              |
| `.github/workflows/ci.yml` | GitHub CI                          |
| `.envrc`                   | Developing with direnv             |

In these files, the `NIX_PATH` variable is set to
`nixpkgs=https://github.com/NixOS/nixpkgs/archive/c898ce22834cf40ea69adf6093755532df412102.tar.gz`,
ensuring that the specified package versions are used during
development, testing in CI, and running in production.
