AZ_SUBSCRIPTION ?=
AZ_RESOURCE_GROUP ?=
LOGIC_APP_NAME ?=
REMOTE_ENDPOINT_URL ?=

.PHONY: deploy
deploy:
	az deployment group create \
		--mode Complete \
		--resource-group "$(AZ_RESOURCE_GROUP)" \
		--template-file main.bicep \
		--parameters remoteEndpointURL="$(REMOTE_ENDPOINT_URL)" \
		--parameters logicAppName="$(LOGIC_APP_NAME)" \
		--output none \
		--confirm-with-what-if

.PHONY: showCallbackURL
showCallbackURL:
	@az rest \
		--method post \
		--query "value" \
		--uri "https://management.azure.com/subscriptions/$(AZ_SUBSCRIPTION)/resourceGroups/$(AZ_RESOURCE_GROUP)/providers/Microsoft.Logic/workflows/$(LOGIC_APP_NAME)/triggers/manual/listCallbackUrl?api-version=2016-06-01"
