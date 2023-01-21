QUESTION ONE

The heap memory of a canister is not saved when upgrading the canister. Each canister has a fixed amount of heap memory allocated to it, which is determined by the network administrator when the canister is deployed. The specific amount of heap memory allocated to a canister will vary depending on the network configuration and the resources available on the network.


QUESTION TWO

A unique Principal can own multiple accounts. A Principal is a digital identity that represents a user or entity on the network, and it can be associated with one or more accounts.
A Principal can own an arbitrary number of accounts, but the number of accounts will be limited by the resources available on the network and by the network's configuration.
It's also important to note that the number of accounts a principal can own can be subject to a gas cost, so owning too many accounts can become too expensive in terms of gas.


QUESTION THREE

It depends on how the canister is being used and what the expected behavior is after the upgrade.
Upgrading a canister from Interface A to Interface B would change the function signature and the expected input, if the canister is being called by other canisters or applications that expect the original function signature, they would fail.
Additionally, if the canister stores data on its heap, and the upgrade modifies how this data is accessed or how it is used, the data may become inaccessible or invalid.
It's important to thoroughly test the canister after upgrading, and ensure that any dependent canisters or applications are also updated to work with the new interface.
It may also be a good idea to deploy the new version of the canister as a separate canister and test it before upgrading the original one, in order to minimize any potential disruptions.