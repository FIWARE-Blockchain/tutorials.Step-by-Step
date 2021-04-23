# Step-by-Step Tutorials[<img src="/docs/logo.png" align="left" width="162">](https://www.fiware.org/)
[![License: MIT](https://img.shields.io/github/license/fiware/tutorials.Step-by-Step.svg)](https://opensource.org/licenses/MIT)
[![Support badge](https://img.shields.io/badge/tag-fiware-orange.svg?logo=stackoverflow)](https://stackoverflow.com/questions/tagged/fiware)


### Canis Major Configuration Overview
![Configuration Image](./docs/config.png)

### Ethereum Transaction using AEI Contract
[AEI Contract](https://github.com/FIWARE-Blockchain/AEIContract) is written in Solidity using ERC721 standard (NFT) and can be use with Ethereum Clients. It is compatible with FIWARE-Canis Major Adaptor to store the data in blockchain. AEI, asset, events (metadata), relationship, is designed to store the NGSI-LD model with the help of Canis Major Adaptor.
* #### Storage Type: [IOTAMaM](https://blog.iota.org/introducing-masked-authenticated-messaging-e55c1822d50e/) (Masked Authenticated Messaging)
(make sure you remote previous docker contrainers, use the docker commands mentioned above)

#####  Step 1: Clone the repository 
```sh
https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step.git
cd tutorials.Step-by-Step
sh clean.sh (docker clean up)
```
#####  Step 2: Build and run the aei-contract and rpc network 
(you can use ganache-cli, besu, parity or any other client)
```sh
docker-compose -f eth-aei.yml up --build
```
once the service start it will deploy the contracts. Get the contract address from the terminal to use in step 3.
#####   Step 3: Running the Services 
(mention the contract address)
```sh
CONTRACT_ADDRESS=${CONTRACT_ADDRESS} docker-compose -f eth-aei-iotaMaM-service.yml up --build
```
#####   Step 4:Import Postman Collection
Import postman collection to learn the service.
[POSTMAN Collection](https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step/blob/master/postman/Ethereum_AEI_IOTAMaM.json)

* #### Storage Type: [IPFS](https://ipfs.io/) (InterPlanetary File System)
(make sure you remote previous docker contrainers, use the docker commands mentioned above)

#####  Step 1: Clone the repository 
```sh
https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step.git
cd tutorials.Step-by-Step
sh clean.sh (docker clean up)
```
#####  Step 2: Build and run the aei-contract and rpc network 
(you can use ganache-cli, besu, parity or any other client)
```sh
docker-compose -f eth-aei.yml up --build
```
once the service start it will deploy the contracts. Get the contract address from the terminal to use in step 3.
#####   Step 3: Running the Services 
(mention the contract address)
```sh
CONTRACT_ADDRESS=${CONTRACT_ADDRESS} docker-compose -f eth-aei-IPFS-service.yml up --build
```
#####   Step 4:Import Postman Collection
Import postman collection to learn the service.
[POSTMAN Collection](https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step/blob/master/postman/Ethereum_AEI_IPFS.json)

* #### Storage Type: [Merkle Tree](https://en.wikipedia.org/wiki/Merkle_tree)
(make sure you remote previous docker contrainers, use the docker commands mentioned above)

#####  Step 1: Clone the repository 
```sh
https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step.git
cd tutorials.Step-by-Step
sh clean.sh (docker clean up)
```
#####  Step 2: Build and run the aei-contract and rpc network 
(you can use ganache-cli, besu, parity or any other client)
```sh
docker-compose -f eth-aei.yml up --build
```
once the service start it will deploy the contracts. Get the contract address from the terminal to use in step 3.
#####   Step 3: Running the Services 
(mention the contract address)
```sh
CONTRACT_ADDRESS=${CONTRACT_ADDRESS} docker-compose -f eth-aei-merkle-service.yml up --build
```
#####   Step 4:Import Postman Collection
Import postman collection to learn the service.
[POSTMAN Collection](https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step/blob/master/postman/Ethereum_AEI_MERKLE.json)
### Ethereum Transaction using Your Own Contract
You can also use Canis Major Adaptor for your own Smart Contract (currently adaptor support eth_sendRawTransaction and no read options, but in future this features will be added)
#####  Step 1: Clone the repository 
(make sure you remote previous docker contrainers, use the docker commands mentioned above)
```sh
https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step.git
cd tutorials.Step-by-Step
sh clean.sh (docker clean up)
```
#####  Step 2: Build and run the aei-contract and rpc network 
(you can use eth other client which support eth_sendRawTransaction)
```sh
docker-compose -f eth-other-service.yml up --build
```
once the service start it will deploy the contracts. Get the contract address from the terminal to use in step 3.
#####   Step 3: Running the Services 
(mention the contract address)
```sh
CONTRACT_ADDRESS=${CONTRACT_ADDRESS} docker-compose -f eth-other-service.yml up --build
```
#####   Step 4:Import Postman Collection
Import postman collection to learn the service.
[POSTMAN Collection](https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step/blob/master/postman/Ethereum_Other.json)
### IOTA Transaction
Canis Major also support transaction for IOTA (v1.0 mainnet, not 1.5 Hornet)
#####  Step 1: Clone the repository 
(make sure you remote previous docker contrainers, use the docker commands mentioned above)
```sh
https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step.git
cd tutorials.Step-by-Step
sh clean.sh (docker clean up)
```
#####   Step 2: Running the Services 
```sh
docker-compose -f iota.yml up --build
```
#####   Step 3:Import Postman Collection
Import postman collection to learn the service.
[POSTMAN Collection](https://github.com/FIWARE-Blockchain/tutorials.Step-by-Step/blob/master/postman/IOTA_Transaction.json)

### Docker clean up command
```sh
// stop all container
docker stop $(docker ps -a -q)

// remove all container
docker rm $(docker ps -a -q)

// delete all volumes
docker volume prune

// delete all networks
docker network prune

// delete all images
docker rmi $(docker images -a -q)
```

© 2021 FIWARE Foundation e.V.