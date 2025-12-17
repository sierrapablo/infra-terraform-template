# Infrastructure as Code with Terraform
Template for IaC with Terraform

[![Latest Release](https://img.shields.io/github/v/release/sierrapablo/infra-terraform-template?logo=github&style=flat-square)](https://github.com/sierrapablo/infra-terraform-template/releases)
[![Stars](https://img.shields.io/github/stars/sierrapablo/infra-terraform-template?logo=github&style=flat-square)](https://github.com/sierrapablo/infra-terraform-template/stargazers)
[![Terraform Validate](https://github.com/sierrapablo/infra-terraform-template/actions/workflows/validate.yaml/badge.svg)](https://github.com/sierrapablo/infra-terraform-template/actions/workflows/validate.yaml)
[![Format Code](https://github.com/sierrapablo/infra-terraform-template/actions/workflows/format.yaml/badge.svg)](https://github.com/sierrapablo/infra-terraform-template/actions/workflows/format.yaml)


> **🚧 Active Development**: This project is currently under active construction. Features, modules, and architecture are evolving and are subject to change.

## Overview

This repository contains the template for Infrastructure as Code (IaC) with Terraform.

## Repository Structure

The project is organized into several key directories, each with its own specific documentation:

| Directory                | Description                                                                                 | Documentation                                       |
| ------------------------ | ------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| **`terraform/`**         | The core infrastructure definition, including the `main` configuration and provider setups. | [View Documentation](./docs/terraform.md)         |
| **`terraform/modules/`** | Reusable, self-contained Terraform modules.                                                   | [View Documentation](./docs/terraform-modules.md) |
| **`ci/`**                | Jenkins pipelines managing the release lifecycle and versioning (Gitflow).                  | [View Documentation](./docs/ci.md)                |
| **`.github/workflows/`** | GitHub Actions workflows for continuous integration (Format, Validate) and GitHub Releases. | [View Documentation](./docs/github-workflows.md) |

### Features

- **Modular Architecture**: Leveraging Terraform modules to create reusable components.
- **Automated Quality Checks**:
  - **Validation**: Terraform syntax and configuration validation on every Pull Request.
  - **Formatting**: Automatic formatting of Terraform code (`terraform fmt`) to ensure style consistency.
- **Release Automation**:
  - **Gitflow Strategy**: Automated version bumping, tagging, and changelog generation using Jenkins and GitHub Actions.

### Getting Started

To get started, initialize a repository based on this template **cloning only `develop` branch**, then create manually `main`: `git checkout -b main` and switch to `develop` again. After that, **update VERSION** to `0.0.0`, commit and push changes. This push manually initializes *GitHub Actions* pipelines.
> ℹ️ Note: you can start creating branches from `develop` to implement a real *GitFlow* strategy, or you can push over `develop` like a *Trunk-based* strategy.

### Use with Jenkins
If you have a Jenkins node, you can launch releases via [release.Jenkinsfile](./ci/release.Jenkinsfile). [View Documentation](./docs/ci.md).

## Credits

**Pablo Sierra** - _Initial work & Maintenance_ - [sierrapablo](https://github.com/sierrapablo)

## License

This project is licensed under the **MIT License** - see the [LICENSE](./LICENSE) file for details.
