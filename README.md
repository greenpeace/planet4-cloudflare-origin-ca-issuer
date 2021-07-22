[![Greenpeace](https://circleci.com/gh/greenpeace/planet4-cloudflare-origin-ca-issuer.svg?style=shield)](https://circleci.com/gh/greenpeace/planet4-cloudflare-origin-ca-issuer)

![Planet4](./p4logo.png)

# Cloudflare Origin CA Issuer

The Cloudflare origin CA issuer is an extension for Certmanager that allows cert-manager to automatically manage cloudflare origin certificates.

Cloudflare origin certificates are used to secure the communications between Cloudflare and the Planet4 backend.

<h1>Important Notes</h1>

>Ensure compatibility with:

- [Cert Manager](https://github.com/greenpeace/planet4-cert-manager)

***

### Requirements - Internal Only

- Access to P4 Infra [environment](https://www.notion.so/p4infra/bab9d0b1f2db4d929a59916899d531c1?v=eca7b78e1ae345c6883a9b37c6b76cac)

### Built with

- [cloudflare/origin-ca-issuer](https://github.com/cloudflare/origin-ca-issuer/tree/trunk/deploy/charts/origin-ca-issuer) helm chart

### Deployment

This repository is deployed via [CircleCI](https://circleci.com/gh/greenpeace/planet4-cloudflare-origin-ca-issuer)

- Commits to the develop branch trigger deployment to the development cluster.  
- Create a PR for review to prepare for production deployment.
- Approval and merge deploys to production.

### Usage

- Clone the repo to access makefile commands via cli that are not executed via CircleCI
  - `make status` - <em> display status of named release </em>
  - `make value` - <em> display user values followed by all values deployed </em>
  - `make history` - <em> display deployment history of named release </em>
  - `make uninstall` - <em> delete release while retaining history, CRDs, PVs etc.</em>
  - `make destroy` - <em> destroy release including CRDs, PVs etc. </em> <strong> Could cause data loss </strong>

### Infra Documentation

- External
  - [Planet 4 Handbook](https://app.gitbook.com/@greenpeace/s/planet4/infrastructure/intro)
- Internal use only
  - [P4 Notion](https://www.notion.so/p4infra/)

### Contributing

 If your interested in contributing to P4 Infrastructure code please check our our community page [here](https://github.com/greenpeace/planet4).
