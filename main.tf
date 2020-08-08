provider "azurerm" {

	subscription_id = "619758a3-ad7a-4018-8095-43aa6d2658f3"
	client_id = "a7abd47e-0a63-468a-8a6e-54d33e472656"
	client_secret = "O.tT9OgLEtPrtXvof.C6ZW054FfMqFGuSa"
	tenant_id = "67007139-5721-4225-b1c1-dba1c8765f3c"

	
	features {}

}


resource "azurerm_resource_group" "resource_gp" {
	name = "LabTF"
	location = "northeurope"




}
