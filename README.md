# Encoded-bnb_chain

High level Architeture Design of a descentralised monopoly game with no central server and the fix to the problems which includes 

1. Cheating
2. Ensuring agreement about the state of the system
3. Communication problems (timeouts)
4. How to decide who should take the next turn
5. How to allow the correct people to join the game

# Solutions

1. Without a central server, players would need to use a peer-to-peer network to communicate and agree on the state of the game. To prevent cheating, the game could be designed to use cryptographic techniques such as digital signatures to ensure that only authorized players can make moves or transactions.

2. To ensure agreement about the state of the system, players could use a consensus algorithm such as proof-of-work or proof-of-stake to verify each other's actions and update the game state. This would prevent any single player from having too much control over the game.

3. Communication problems and timeouts could be handled by building in redundancy and failover mechanisms, so that if one player is temporarily unavailable or drops out of the game, another player can step in to take their place.

4. To decide who should take the next turn, players could use a fair and transparent mechanism such as a round-robin system, where each player takes turns in a predetermined order.

5. To allow the correct people to join the game, players could use a permissioned network where only authorized users are allowed to participate. This could be accomplished through a decentralized identity system such as blockchain-based identities or self-sovereign identities.
