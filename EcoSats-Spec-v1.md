# EcoSats Specification  
**Version 1.0 – November 2025**  
*“1 sat + 1 real-world sufficiency unit”*

---

## 1. Core Definition  
**EcoSat (ES)** is a **dual-peg digital voucher** issued by a **local commons council** and redeemable in **two layers**:

| Layer | Peg | Symbol |
|-------|-----|--------|
| **A. Bitcoin Layer** | 1 ES = **1 satoshi** (0.00000001 BTC) | `1 Ƶ` |
| **B. Sufficiency Layer** | 1 ES = **1 verified local sufficiency unit** (see §3) | `1 ☀` |

> **Redemption rule**: 1 ES = **either** 1 sat **or** 1 sufficiency unit, **never both**.  
> This prevents double-spending while allowing **exit liquidity**.

---

## 2. Issuance & Backing

| Mechanism | Details |
|-----------|---------|
| **Issuer** | **Commons Council** (7–12 elected stewards, 6-month rotating mandate) |
| **Backing Vault** | **3-of-5 multisig** on Bitcoin mainnet (BIP-86 Taproot) |
| **Initial Collateral** | 10 % in BTC, 90 % in **pre-verified sufficiency units** (see §3) |
| **Max Supply** | **Capped at 10 % of local annual labor hours** (e.g., 100 k hours → 10 M ES max) |
| **Burn-on-Exit** | When redeemed for sats, the sufficiency unit is **marked spent** in the local ledger and the ES is **burned** (sent to `OP_RETURN`). |

---

## 3. Sufficiency Unit Catalog (Examples)

| Code | Unit | Verification Method | Example Redeem |
|------|------|---------------------|----------------|
| `☀1` | 1 kWh **excess renewable** (curtailed or spilled) | Smart meter + oracle (e.g., [FlexiDAO](https://flexidao.com)) | Charge e-bike at co-op station |
| `⚒1` | 1 hour **human care/repair** | Time-bank app + photo proof | Bike repair at the fix-it café |
| `🌱1` | 1 kg **regenerative compost** | Weigh-in + QR seal | Collect at community garden |
| `🪴1` | 1 m² **permaculture bed** (1-year lease) | GPS polygon + annual audit | Grow food on commons land |

> **New units** added by **Council vote + 30-day community objection window**.

---

## 4. Technical Stack

| Layer | Tool | Reason |
|-------|------|--------|
| **Custody** | **Bitcoin Core + Taproot multisig** | Immutable, auditable |
| **Sufficiency Ledger** | **Hyperledger Fabric (permissioned)** | Local privacy + verifiable claims |
| **User Wallet** | **Minibits** (open-source, Cashu ecash) | Chaumian mint on Lightning; **no KYC** |
| **Oracle** | **OpenEMS + DLCs** (for energy) | Dispute-free proof of excess kWh |
| **Bridge** | **Atomic swap script** (sats ↔ ES) | Trustless exit |

---

## 5. Flow Examples

### A. Earn (Local Loop)
1. Alice installs 2 kW solar → 300 kWh curtailed in summer.  
2. Oracle signs: `☀300`.  
3. Mint issues **300 ES** to Alice’s Minibits wallet.  
4. Alice spends **150 ES** at the repair café (`⚒150`). Café now holds ES.

### B. Exit (Global Bridge)
1. Café wants to buy spare parts online.  
2. Sends **100 ES** to Council mint.  
3. Mint **burns 100 ES**, releases **100 sats** to Café’s LN address.  
4. Sufficiency units (`☀100`) marked **spent** in local ledger.

---

## 6. Anti-Speculation Mechanisms

| Rule | Effect |
|------|--------|
| **Demurrage** | –2 % per month on balances > 1 000 ES | Encourages circulation |
| **HODL Lock** | Balances > 5 000 ES auto-lock for 1 year | Prevents extractive hoarding |
| **Redemption Cap** | Max 10 % of total ES redeemable for BTC per month | Smooths volatility |

---

## 7. Governance (One-Pager)

```
Commons Council (3-of-5 multisig + 7 human stewards)
       │
       ├── Issues ES (mint)
       ├── Burns ES on BTC exit
       ├── Adds new sufficiency units (vote)
       └── Emergency freeze (75 % vote, 72 h max)
```

**Audit**: Quarterly **open-source proof-of-reserves** (BTC + sufficiency ledger).

---

## 8. Launch Checklist (3 Months)

| Week | Task |
|------|------|
| 1–2 | Form Council, draft sufficiency catalog |
| 3–4 | Deploy multisig + Hyperledger node |
| 5–6 | Onboard 10 solar households (oracle integration) |
| 7–8 | Seed mint with 1 BTC + 10 k verified ⚒ hours |
| 9–12 | Public mint launch + wallet QR stickers in village |

---

## 9. One-Line Tagline  
**EcoSats: Bitcoin-backed sufficiency—spend local, exit global, never inflate.**

---

*Open-source repo:* `https://github.com/pascalranaora/sufficiency-protocol`  
