# Wallet Application with tbDEX Integration

## Overview

This wallet application is designed to facilitate fast, secure, and compliant cross-border transactions using the tbDEX protocol. The application integrates with tbDEX to enable communication with liquidity providers (PFIs) and supports multiple currencies, transaction fees, and customer feedback mechanisms.

## Features

- **Fee Structure**: 
  - 1.5% fee on transactions performed using the wallet balance (e.g., transfers from the wallet to bank accounts).
  - Additional fee for currency swaps between different currencies.
  - Free PFI to PFI funds transfer.

- **Customer Feedback**:
  - Users can rate and comment on PFIs after successful transactions.
  - Ratings and comments influence the selection of PFIs for future transactions, ensuring transparency and informed decision-making.

- **Multiple PFI Offerings**:
  - PFIs are selected based on customer ratings and needs.
  - Users are shown a list of available PFIs that match their requirements, including ratings and comments.

- **Decentralized Identifiers and Verifiable Credentials**:
  - DIDs and VCs are securely stored in encrypted form on the server.
  - Encryption details are encapsulated in an environment file for added security.

## Design Considerations

### Profitability
- **Wallet Balance Transactions**: Charging a 1.5% fee for transactions performed using the wallet balance.
- **Currency Swap Fees**: Additional fees applied to currency swaps within the wallet.

### Matching Offerings from PFIs
- **User Needs-Based Filtering**: Display PFIs based on user-defined criteria (currency, transaction speed, etc.).
- **Ratings and Reviews**: Show PFIs with customer ratings and comments to facilitate informed decisions.

### Customer Management
- **Secure Storage**: DIDs and VCs are stored encrypted on the server with encryption details in an environment file.
- **Credential Handling**: Fetch and manage Verifiable Credentials securely.

### Customer Satisfaction
- **Feedback Collection**: Prompt users to rate and comment on PFIs after transactions.
- **Rating Integration**: Use customer ratings to influence PFI selection and enhance the quality of service.
