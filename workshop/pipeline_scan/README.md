# Pipeline Security Scan

This workshop module focuses on scanning the pipeline configuration itself for security vulnerabilities and misconfigurations.

## Why is Pipeline Security Important?

Many organizations overlook the pipeline as a potential attack surface. Malicious actors know that compromising your CI/CD system can grant them access to source code, privileged credentials, and even the ability to inject malicious code into your production systems without being detected by application security tools.

Pipeline security scanning analyzes your CI/CD workflows, configurations, and automation scripts to identify security risks in your deployment process.

## Common Pipeline Security Issues

- **Hardcoded Secrets in Workflows** - API keys, passwords, or tokens hardcoded in YAML files
- **Excessive Permissions** - Workflows with unnecessary write permissions
- **Untrusted Actions** - Using third-party actions without proper verification
- **Insecure Triggers** - Workflows triggered by external events without validation
- **Missing Security Controls** - No approval processes for sensitive operations

## Tools Used in This Module

- [**Claws**](https://github.com/Betterment/claws) - Static analysis tool to help write safer GitHub Actions workflows
- [**Zizmor**](https://github.com/woodruffw/zizmor) - Security scanner for finding issues in GitHub Actions workflows
- [**Prowler**](https://github.com/prowler-cloud/prowler) - Security scanner for cloud infrastructure

## Learning Objectives

By the end of this module, you will:
- Understand pipeline security risks
- Learn to identify insecure workflow configurations
- Know how to implement pipeline security best practices
- Understand the importance of least privilege in automation

## Security Checklist

- [ ] No hardcoded secrets in workflow files
- [ ] Minimal required permissions to run the actions
- [ ] Pinned action versions
- [ ] Secure triggers and conditions
- [ ] Environment protection rules
- [ ] Audit logging enabled

## Extra Balls
- [Warden Ruse Return](./extra/WardenRuseReturns)
- [actions/checkout can leak GitHub credentials](extra/checkoutLeak/README.md)

## References
- [GitHub Action tj-actions/changed-files supply chain attack: everything you need to know](https://www.wiz.io/blog/github-action-tj-actions-changed-files-supply-chain-attack-cve-2025-30066): A supply chain attack on popular GitHub Action tj-actions/changed-files caused many repositories to leak their secrets.

### GitHub Actions
- [GitHub Actions Attack Diagram](https://github.com/jstawinski/GitHub-Actions-Attack-Diagram/blob/main/GitHub%20Actions%20Attack%20Diagram.svg): GitHub Actions Attack Diagram provides guidance for identifying GitHub Actions vulnerabilities.
- [How to Harden GitHub Actions: The Unofficial Guide](https://www.wiz.io/blog/github-actions-security-guide): A guide to hardening GitHub Actions.
- [GitHub Actions: Secure Use Reference](https://docs.github.com/en/enterprise-cloud@latest/actions/reference/secure-use-reference)
- **Keeping your GitHub Actions and workflows secure**: A series of posts about GitHub Actions security by GitHub Security Lab
  - [Preventing pwn requests](https://securitylab.github.com/resources/github-actions-preventing-pwn-requests/)
  - [Untrusted input](https://securitylab.github.com/resources/github-actions-untrusted-input/)
  - [How to trust your building blocks](https://securitylab.github.com/resources/github-actions-building-blocks/)
  - [New vulnerability patterns and mitigation strategies](https://securitylab.github.com/resources/github-actions-new-patterns-and-mitigations/)
