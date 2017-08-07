# zuidhorn-kindpakket-smartcontract-poc
Smart contract for the kindpakket blockchain proof of concept.

# How to use
The easiest way to interact with the contract is pasting it into the [remix IDE](https://ethereum.github.io/browser-solidity/)

1. Enter an initial amount of tokens at the red "create" field and press the button.
2. Use the "account" menu to switch to the second account (public key) this will become a shopkeeper.
3. Copy the key of this account (using the button next to the dropdown menu).
4. Switch back to the top account (the contract owner, because it was the one that created the contract)
5. Paste the key you just copied into the "approveShop" field (you needs to put it between quotes"") and click the button.
6. Use the "account" menu to switch to the third account (public key) we are now going to fund this wallet with kindpakket coins.
7. Copy the public key and switch back to the owner (top) account.
8. Paste the key (between "") in the "fundWallet" field, followed by a comma and budget (we'll only use integers for now)  
Example: "0xca35b7d915458ef540ade6068dfe2f44e8fa733c", 200  
The wallet is now funded.  
The shopkeeper can now subtract from this wallet.
9. Switch back to the shopkeeper (second key in the account menu)
10. In the "recievePayment" field paste the address and the amount you want to recieve and click the button:  
Example: "0xca35b7d915458ef540ade6068dfe2f44e8fa733c", 25  

You can now check the balance of the wallet that you added coins to and subtracted them from by pasting the key in the "balanceOff field; it should read 175  
You can also check the other balances (owner and shopkeeper)
