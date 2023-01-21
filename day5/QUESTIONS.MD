QUESTION ONE

FALSE


QUESTION TWO

In the case of the call chain A.call() -> B.call() -> C, A is calling B and B is calling C. The time required to get the result of the call to C will depend on the time required for the consensus process to be completed for the call to C and the time required for the consensus process to be completed for the call to B.

A consensus process typically involves multiple rounds of message passing between the nodes in the network, until a majority of nodes reach agreement on the outcome of the call. The number of rounds needed will depend on the specific consensus algorithm being used, the number of nodes participating in the consensus process and the network conditions.


QUESTION THREE

Yes, it is possible to make an inter-canister call in query mode. A query mode call in Motoko is a read-only call that does not change the state of the canister. This type of call can be used to retrieve information from another canister without modifying its state.