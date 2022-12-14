# software-release
Smart contract written in Solidity 

## 1. Description
This is a smart contract written in Solidity, which the Agent uses to release the new version of a software to the Licensee. Smart contracts ensure that the software can only be released to a specific Licensee on an agreed date.

## 2. Operations
Agent needs to release the latest version of a software to the Licensee, but instead of handing over the source code directly, Agent hosts the software on the cloud platform and then writes a smart contract to release the private link to the Licensee. Through this private link, Licensee can get the software and other related information.  
To achieve these purposes, Agent writes the smart contract **softwareRelease.sol** and publishes it on the blockchain. Afterwards, Agent distributes the software to Licensee through this smart contract.
<div align=center><img width="600" height="400" src="https://github.com/zhilin963/software-release/blob/main/IMG/release2licensee.jpg" />  </div>

* **File Storage**  
Agent hosts the new version of a software on cloud resources (e.g. AWS, Google Cloud) and is responsible for safekeeping of the link to access the software and the required password.  

* **Writing Smart Contract**  
Agent writes a smart contract which needs to contain the agreed release date, the address of the specific Licensee, and a link to access the software. The release condition is clarified in a pre-signed commercial contract.  

* **Software Link Release**  
Once the release condition is triggered, Agent releases the software link to the certain Licensee on an agreed date through the smart contract. After then, the Licensee can get the link and other necessary information from the smart contract.  

* **File Download**  
Licensee downloads the software through the obtained link from smart contract.  

## 3. Functional Design
<div align=center><img width="300" height="500" src="https://github.com/zhilin963/software-release/blob/main/IMG/contract1.jpg" />  </div>
