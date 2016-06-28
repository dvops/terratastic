Atlas Terraform Demo
====================

## Getting Started

Set-up your [direnv](http://direnv.net/) **.envrc** file with your ATLAS_TOKEN:

	export ATLAS_TOKEN=xxxxxx

Enable this config:

	$ direnv allow

Setup terraform to work with Atlas:

	$ terraform remote config \
		-backend=Atlas \
		-backend-config="name=sainsburys/atlas-terraform-demo"

Get modules:

	$ terraform get

Push to Atlas:

	$ terraform push \
		-name="sainsburys/atlas-terraform-demo"

Now visit: [Atlas](https://atlas.hashicorp.com/terraform/sainsburys/environments/atlas-terraform-demo/changes/runs)
