-include .env

.PHONY: deployEntryPoint

deployEntryPointToAnvil:
	@forge script script/DeployEntryPoint.s.sol:DeployEntryPoint --rpc-url $(ANVIL_RPC_URL) --account $(ACCOUNT_FOR_ANVIL) --sender $(ANVIL_KEYCHAIN) --broadcast