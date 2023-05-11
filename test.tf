terraform {
  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.9.6"
    }
  }
}
	
provider "port-labs" {
	client_id = "wHjVxzUMNU2lSEIusD1HxAuNnYkHWKFt"     # or set the env var PORT_CLIENT_ID
	secret    = "4k39UAR2rojvBUDG4zcqp9rQMn1nC1iyJBOwFXGZHJTpCpbpPfOJg89ZK5T0BZFb" # or set the env var PORT_CLIENT_SECRET
	base_url  = "https://api.getport.io/v1"

}

resource "port-labs_entity" "test1" {
    title      = "test1"
    identifier = "test1"
    blueprint  = "package"

    properties {
		name  = "language"
		value = "Python"
	}

	properties {
		name  = "version"
		value = "string"
	}
}
