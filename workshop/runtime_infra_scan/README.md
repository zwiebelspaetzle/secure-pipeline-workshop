# Runtime Infrastructure Scan

This workshop module focuses on scanning the deployed (runtime) infrastructure for vulnerabilities and misconfigurations that may not be detectable through static analysis of code or configuration files.

## Why is Runtime Infrastructure Scanning Important?

While IaC scans catch many issues pre-deployment, runtime infrastructure scanning is crucial because some vulnerabilities or misconfigurations only manifest once resources are live. This could be due to manual changes, dynamic variables, complex interactions, or even a bug in your IaC provider that end up deploying resources in a way that is not intended.

Continuous runtime scanning helps ensure your infrastructure remains secure after deployment and as it evolves.


## Common Runtime Infrastructure Issues

- **Misconfigurations** - Public exposed resources, weak IAM policies, unrestricted security groups
- **IAM vulnerabilities** - Credential theft, privilege escalation, brute force attacks
- **Insecure APIs and Interfaces** - API key leaks, MITM attacks, rate-limiting bypass
- **Data Breaches and Exfiltration** - Unencrypted data exposure, insider threats, SQL injection attacks.
- **Inadequate Monitoring and Logging** - Log tampering, cryptojacking, lack of real-time alerts

## Tools Used in This Module

- [**Prowler**](https://github.com/prowler-cloud/prowler) - Security best practices assessments for multiple cloud providers (AWS, Azure, GCP, M365, GitHub and more)
  - Can also be used for continuous monitoring and remediation, but we focus on the assessment part
- [**Steampipe**](https://github.com/turbot/steampipe) - SQL-based infrastructure analysis and compliance checking for cloud platforms
  - Uses SQL queries to analyze cloud resources and run security compliance checks across multiple providers

## Learning Objectives

By the end of this module, you will:
- Understand the importance of runtime infrastructure scanning
- Learn to use automated tools to assess live cloud environments


## Security Checklist

- [ ] All systems and services are up to date with security patches
- [ ] No unnecessary open ports or services
- [ ] Strong authentication and access controls in place
- [ ] Security groups/firewalls follow least privilege
- [ ] Encryption enabled for data at rest and in transit
- [ ] No sensitive resources publicly exposed
- [ ] Monitoring and logging enabled for all critical resources
- [ ] Regular runtime scans scheduled and reviewed

## References
- [Prowler's State of Cloud Security Report 2025](https://prowler.com/blog/cloud-security-report-2025/)
- [Top cloud misconfigurations: A CSPM perspective](https://sysdig.com/blog/top-cloud-misconfigurations/)