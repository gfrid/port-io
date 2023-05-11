terraform {
	required_providers {
		port-labs = {
			source  = "port-labs/port-labs"
			version = "~> 0.8.1"
		}
	}
}
	
provider "port-labs" {
	client_id = "wHjVxzUMNU2lSEIusD1HxAuNnYkHWKFt"     # or set the env var PORT_CLIENT_ID
	secret    = "4k39UAR2rojvBUDG4zcqp9rQMn1nC1iyJBOwFXGZHJTpCpbpPfOJg89ZK5T0BZFb" # or set the env var PORT_CLIENT_SECRET
	base_url  = "https://api.getport.io/v1"
}

resource "port-labs_entity" "some_identifier" {
    title      = "Some Title"
    identifier = "some_identifier"
    blueprint  = "service"

    properties {
		name  = "name"
		value = "string"
	}

	properties {
		name  = "url"
		value = "https://example.com"
	}

	properties {
		name  = "readme"
		value = "string"
	}

	properties {
		name  = "about"
		value = "string"
	}

    
}