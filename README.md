# Logic App

Simple logic app to transform azure service webhook event `Pull request commented on` into a more friendly message.

## deployment

### az setup

```bash
az bicep install
az login
az account set --subscription ...
```

### deploy logic app

*Example*:

```bash
export AZ_SUBSCRIPTION=your-subscription
export AZ_RESOURCE_GROUP=your-resource-group-name
export LOGIC_APP_NAME=your-logic-app-name
export REMOTE_ENDPOINT_URL=<remote hook URL here>
make deploy showCallbackURL
```
