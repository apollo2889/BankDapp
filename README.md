# Bank DAPP
This is the Solidity SmartContract + React.js code for the Bank DAPP 😙

## Getting setup ⚙️
- Copy `.env` file to `.env.local`
- Create an App in [Pork Portal](https://www.portal.pokt.network/) and Update *PORK_RINKEBY_URL* in `.env.local`
- Copy your metamask Rinkeby account private key and Update *RINKEBY_PRIVATE_KEY* in `.env.local` 🤫
- Run `npm install`

## Deploy Smart Contract 🐶
- Compile Smart Contract: `npx hardhat compile`
- Deploy Smart Contract to Rinkeby Testnet: `npx hardhat run scripts/deploy.js --network rinkeby`

## Running React App 🍪
- Copy `Bank.json` file from `artifacts/contracts/BankContract.sol/` to `src/abi/`
- Update contractAddress variable in `src/App.js` file with deployed Contract Address
- Run `npm start` and ENjoy 👌



