QUESTION 1

The ledger canister is controlled by a decentralized network of nodes that run the Internet Computer protocol.


QUESTION 2



QUESTION 3

If a neuron has 1 ICP locked with a 4 year dissolve delay, and the neuron has been locked for 2 years, it would likely have a reduced voting power compared to a neuron with the same number of ICPs that has been locked for the full 4 year dissolve delay.


QUESTION 4

The convert_to_text function is declared as async but does not contain any asynchronous operations.
The function convert_to_text(m : Nat) should return a value, but it doesn't. The Nat.toText(m) call is not returned.
The function Nat.toText(m) returns the Text representation of m but it is not captured.


QUESTION 5

The function show_languages(language : Text) is declared as async, but it doesn't contain any asynchronous operations. The async keyword is not necessary here.
The function show_languages(language : Text) takes a language parameter, but it is not used inside the function. The parameter can be removed.
The function show_languages() returns the languages array by value, but it is defined as var. This can cause unexpected behavior, as the returned array can be modified outside the actor. It should be defined as let instead.


QUESTION 6

The function add_language(new_language: Text) is declared as async, but it doesn't contain any asynchronous operations. The async keyword is not necessary here.
The function add_language(new_language: Text) is modifying the state of the languages variable, but it is not defined as payable, so it cannot be executed in a transaction.
The languages array is defined as var, but it is being modified by the function add_language(new_language: Text). This can cause unexpected behavior, as the array can be modified outside the actor. It should be defined as let instead.
languages := Array.append<Text>(languages, [new_language]) is not the correct way to add an element to the array, instead use Array.push(languages, new_language)


