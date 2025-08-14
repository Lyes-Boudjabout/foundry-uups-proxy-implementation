# **UUPS Proxy Implementation**

**Author:** [@Lyes-Boudjabout](https://www.github.com/Lyes-Boudjabout)

**License:** [MIT](https://choosealicense.com/licenses/mit/)

***UUPS Proxy Implementation*** – An upgradeable smart contract architecture leveraging the EIP-1822 UUPS (Universal Upgradeable Proxy Standard) pattern, built with Solidity and integrated with OpenZeppelin’s upgradeable contracts library. This setup enables efficient contract upgrades while minimizing gas costs compared to traditional proxy patterns. It ensures maintainable, secure, and transparent upgradability through an upgradeTo function governed by access control, maintaining state across upgrades without redeployment.

## Features

- Upgradeable Smart Contracts via UUPS pattern.
- State Preservation across upgrades.
- Access-Controlled Upgrades.
- Reduced Gas Costs vs Transparent Proxy.
- Full OpenZeppelin Compatibility.

## Requirements 
- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`

## Run Locally

Clone the project
```bash
  git clone https://github.com/Lyes-Boudjabout/uups-proxy-implementation
```

Go to the project directory
```bash
  cd uups-proxy-implementation
```

Install dependencies
```bash
  forge install openzeppelin/openzeppelin-contracts OpenZeppelin/openzeppelin-contracts-upgradeable Cyfrin/foundry-devops
```

## Foundry Documentation
https://book.getfoundry.sh/

## 📬 Reach Me Out

I’m always open to discussions, collaborations, and feedback. Feel free to connect with me through any of the channels below:

**GitHub:** [@Lyes-Boudjabout](https://www.github.com/Lyes-Boudjabout) |
**LinkedIn:** [Lyes Boudjabout](https://www.linkedin.com/in/lyes-boudjabout) |
**Email:** nl_boudjabout@esi.dz
