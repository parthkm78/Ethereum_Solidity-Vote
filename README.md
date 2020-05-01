# Ethereum_Solidity
This repository includes very basic Vote fuctionalities refrence on Ethereum Solidity.
This project also include basic programing in solidity.
Please read README.md first if you don't know basic consepts & refer Vote_Solidity.docx to create & Deploy smart contracts

# What is Ethereum?
Ethereum is an open source, public, blockchain-based distributed computing platform and operating system featuring smart contract functionality
https://en.wikipedia.org/wiki/Ethereum

# What is Solidity?
Solidity is an object-oriented programming language for writing smart contracts. It is used for implementing smart contracts on various blockchain platforms, most notably, Ethereum.
https://en.wikipedia.org/wiki/Solidity

#  What is smart contract?
Smart contracts are lines of code that are stored on a blockchain and automatically execute when predetermined terms and conditions are met. At the most basic level, they are programs that run as they’ve been set up to run by the people who developed them. The benefits of smart contracts are most apparent in business collaborations, in which they are typically used to enforce some type of agreement so that all participants can be certain of the outcome without an intermediary’s involvement.

# File - Voter.sol
It include very basic voting fuctionality. One user can vote by id of candidate as much he/she want per address.

# File - One_vote_per_Address.sol
One user can vote only one time by id of candidate per address.

# File - Vote_by_name_and_number_&_One_vote_per_Add.sol
Use can vote by id as well name of candidate and user can vote single time per address.
It handles below restriction
  1. Single vote per user
  2. if use try to vote second time then it throw error and show the error message
  3. it checks all parameters send by users are correct then only proceed , if  not correct or anything goes wrong then it automatically refund remainig gas to consumers.
 
# Download remix IDE or open online remix IDE : https://remix.ethereum.org/
Create new file & copy - paste code.
Complie code and deploy contract.
All the information are provided on remix_vote.docs
